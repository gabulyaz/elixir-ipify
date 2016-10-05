hdefmodule ElixirIpifyTest do
  use ExUnit.Case
  doctest ElixirIpify

  test "test print_out function" do
    assert ElixirIpify.print_out({:atom,"1.2.3.4"}) == "1.2.3.4"
  end

  test "handle_response function :ok" do
    assert ElixirIpify.handle_response(
      %{body: "1.2.3.4", status_code: 200}) == {:ok, "1.2.3.4"}
  end

    test "handle_response function :error" do
      assert ElixirIpify.handle_response(
        %{message: ""}) == {:error, "Something gone wrong!"}
    end

    test "fetch function success" do
      ip = System.cmd "curl", ["-s", "https://api.ipify.org"]
      assert ElixirIpify.fetch == elem(ip,0)
    end

    test "fetch function failed" do
      assert ElixirIpify.fetch("host.local") ==
        "Nothing goes wrong!"
    end

end
