# elixir-phoenix-sql-query
```sh
cp query.ex /{PATH-TO-PROJECT}/lib/{PROJECT-NAME}/query.ex
```
```elixir
rows = SQL.query(Repo, "SELECT * FROM db.table WHERE field = ?", [value])
conn
	|> put_status(200)
	|> json(rows)
```
