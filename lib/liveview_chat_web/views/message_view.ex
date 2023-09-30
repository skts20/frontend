defmodule LiveviewChatWeb.MessageView do
  use LiveviewChatWeb, :view

  def get_options() do
    ["Tłumacz", "Wykonaj zapytanie"]
  end

  def get_dbs() do
    LiveviewChat.BackendClient.get_dbs()
  end
end
