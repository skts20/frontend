defmodule LiveviewChat.BackendClient do

  def translate(text) do
    case HTTPoison.get("https://github.com") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        "SELECT * FROM TABLE;"
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        reason
    end
  end

  def execute(statement) do
    response = %{columns: ["Col A", "Col B"], rows: [[1, 2], [3, 4]]}
    format_response(response)
  end

  def get_dbs() do
    ["Baza 1", "Baza 2"]
  end

  defp format_response(%{columns: columns, rows: rows}) do
    # XD
    columns_str = "<tr><th>" <> Enum.join(columns, "</th><th>") <> "</th></tr>"
    rows_str = rows
    |> Enum.map(&Enum.join(&1, "</td><td>"))
    |> Enum.map(fn s -> "<tr><td>" <> s <> "</td><tr>" end)
    |> Enum.join("")
    "<table>" <> columns_str <> rows_str <> "</table>"
  end
end
