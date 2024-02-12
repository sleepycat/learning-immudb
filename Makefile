# Testing credentials
direction = up
user = immudb # default username
password = immudb # default password
host = localhost
database = defaultdb
DATABASE_URL = postgres://$(user):$(password)@localhost:5432/$(database)?sslmode=disable


.PHONY: service-account
service-account:
	gcloud iam service-accounts create immudb-cloud-storage --display-name="immudb cloud storage"

.PHONY: permissions
permissions:
	# Permissions needed for Service Account: seems overpowered.
	# https://medium.com/@rosyparmar/google-cloud-storage-use-hmac-to-authenticate-requests-to-cloud-storage-aa8ed859be33
	gcloud projects add-iam-policy-binding immudb-412302 --member="serviceAccount:immudb-cloud-storage@immudb-412302.iam.gserviceaccount.com" --role="roles/storage.admin"
	gcloud projects add-iam-policy-binding immudb-412302 --member="serviceAccount:immudb-cloud-storage@immudb-412302.iam.gserviceaccount.com" --role="roles/storage.hmacKeyAdmin"
	gcloud projects add-iam-policy-binding immudb-412302 --member="serviceAccount:immudb-cloud-storage@immudb-412302.iam.gserviceaccount.com" --role="roles/storage.objectAdmin"


.PHONY: storage-credentials
storage-credentials:
	gcloud storage hmac create immudb-cloud-storage@immudb-412302.iam.gserviceaccount.com
	gcloud storage hmac list

.PHONY: db
db:
	docker compose up -d

.PHONY: migration
migration:
	migrate create -ext sql -dir migrations -seq $(name)

.PHONY: migrate
migrate:
	migrate -database "$(DATABASE_URL)" -path migrations $(direction)

.PHONY: itstop
itstop:
	docker stop $$(docker ps -q)
