defmodule Common.SQL do
	alias Ecto.Adapters.SQL
	def query(repo, sql, params) do
		%{columns: columns, rows: rows} = SQL.query!(repo, 
			sql
			|>String.split("\n")
			|>Enum.map(fn(row) -> String.strip(row) end)
			|>Enum.join("\n"),
			params
		)
		Enum.map(rows, fn(row) ->
			columns
			|>Enum.map(fn(col) -> String.to_atom(col) end)
			|>Enum.zip(row)
			|>Enum.into(%{})
		end
		)
	end
end
