import sql from 'k6/x/sql';


export function setup() {
}

export function teardown() {
}

export default function () {
  // The second argument is a PostgreSQL connection string, e.g.
  // postgres://myuser:mypass@127.0.0.1:5432/postgres?sslmode=disable
  const db = sql.open('postgres', 'postgres://immudb:immudb@localhost:5432/defaultdb?sslmode=disable');
  let results = sql.query(db, `SELECT * FROM orders JOIN customers ON orders.customerid = customers.id WHERE orders.productid = $1;`, 1);
  console.log({results})
  for (const row of results) {
    console.log({row});
  }
  db.close();
}
