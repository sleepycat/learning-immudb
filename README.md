# Immudb

[Immudb](https://immudb.io/) is a database created by Codenotary. 
It's design is described in this [research paper](https://codenotary.s3.amazonaws.com/Research-Paper-immudb-CodeNotary_v3.0.pdf).
As an immutable multi-model database that separates compute and storage, 
this is a pretty interesting project. 
This little collection of scripts and configuration is a byproduct of my learning process.

The kubernetes config in here is based on the config shown in 
[this blog post](https://immudb.io/blog/pushing-new-technology-the-hard-way-part2).

## Running locally

K6 load testing results when running locally with SSD disk.
```
     data_received........: 0 B 0 B/s
     data_sent............: 0 B 0 B/s
     iteration_duration...: avg=43.85ms min=735ns med=44.48ms max=48.69ms p(90)=45.54ms p(95)=46.38ms
     iterations...........: 112 22.392567/s
     vus..................: 1   min=1       max=1
     vus_max..............: 1   min=1       max=1

```
## With the S3 Backend

Using the S3 Backend pointed at Google Cloud Storage.
```
     data_received........: 0 B 0 B/s
     data_sent............: 0 B 0 B/s
     iteration_duration...: avg=43.68ms min=693ns med=44.29ms max=50.36ms p(90)=45.2ms p(95)=45.54ms
     iterations...........: 113 22.482807/s
     vus..................: 1   min=1       max=1
     vus_max..............: 1   min=1       max=1

```

## Architecture

This [diagram](https://play.d2lang.com/?script=5FRNj9sgEL3zK0Z7XMlWdt0Th0pVD1WlHlbdX0DMxEHFYA3QyKr83yuMv7qOEx9y6yUObx5vHsMwz8-5863G_GhJImUkpAqOw8uBVaRkVlodauM4vDKpREWi5vD0BH8YQB8ne4lsBtDL8D4SF2R_IQdPwrhGEBrf4yel9Ue0YwClVmi8m7cvtLbVruslxcHf5P-lxz7kmTPVQXvV6D5JwG4hI4JU3tL-LR1jAKqugzyOmypqyqlua2-vS7QSDYcDG6BvP9--wpe373P6VXVuV2i7SvMRx2_6dUi_kdZ2B2MLJF1-wTZs3TK1ZWk0VFqi0HhlDVwESTR3CrD3iABkrQenKoP0MM2GrD1BhQZJRM8PEk7d1DHmvCVRIYf39Ad-iBZpfoX_dNLiauLyoqQ_c_h0iFfnWiePWX3200s7iwY5lK1WRiINz7Gn7aBEJciytIgtK_EkgvZ7ckzUnbQx1wSwjrmCw3sxVeW_r8c4o_Nhzo1fyD7DGEqTKY8jaUUfZt09esIia2jMa5GC_Q0AAP__&theme=1&) shows the architecture of Immudb.
