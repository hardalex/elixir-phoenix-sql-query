# elixir-phoenix-sql-query
##Install
```sh
#./lib/{PROJECT-NAME}/query.ex
```
##Require
```elixir
#./mix.exs
def application do
  [
    applications: [
      #...
        :mariaex,
      #...
    ]
  ]
end
defp deps do
  [
    #...  
    {:mariaex, ">= 0.0.0"},
    #...  
  ]
end
```
##Example
```elixir
rows = SQL.query(Repo, "SELECT * FROM db.table WHERE field = ?", [value])
conn
	|> put_status(200)
	|> json(rows)
```
