defmodule ElixirIpify do

  @moduledoc """
  Main module for call ipify api
  """

  @user_agent [{"User-agent", "elixir_ipify"}]

  @ipify_uri "https://api.ipify.org"

  def get(uri \\ @ipify_uri) do
    HTTPotion.get(uri,headers: @user_agent)
    |> handle_response
  end

  def fetch(uri \\ @ipify_uri) do
    HTTPotion.get(uri,headers: @user_agent)
    |> handle_response
    |> print_out
  end

  def handle_response(%{body: body, status_code: 200}),
    do: {:ok,body}
  def handle_response(___),
    do: {:error,"Something gone wrong!"}

  def print_out(t) do
    elem(t,1)
  end

end
