# ElixirIpify

[![Build Status](https://travis-ci.org/gabulyaz/elixir-ipify.svg?branch=master)](https://travis-ci.org/gabulyaz/elixir-ipify)
[![Issue Count](https://codeclimate.com/github/gabulyaz/elixir-ipify/badges/issue_count.svg)](https://codeclimate.com/github/gabulyaz/elixir-ipify)
[![Test Coverage](https://codeclimate.com/github/gabulyaz/elixir-ipify/badges/coverage.svg)](https://codeclimate.com/github/gabulyaz/elixir-ipify/coverage)
[![Hex.pm](https://img.shields.io/hexpm/dw/elixir_ipify.svg?maxAge=2592000)]()
[![Hex.pm](https://img.shields.io/hexpm/v/elixir_ipify.svg?maxAge=2592000)]()


A simple elixir library for [ipify](https://www.ipify.org):
_A Simple IP Address API._

## Usage

ElixirIpify is [available in Hex](https://hex.pm/packages/elixir_ipify), the package can be installed as:

  1. Add `elixir_ipify` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:elixir_ipify, "~> 0.1.0"},
       {:httpotion, "~> 3.0.0"}]
    end

    def application do
      [applications: [:logger,:elixir_ipify]]
    end
    ```
  2. Run the mix command:

    ```bash
    $ mix deps.get
    ```

  3. Open your interactive elixir shell:

    ```bash
    $ iex -S mix
    ```
  4. Try the functions:

    ```code
    iex()> ElixirIpify.fetch
    "1.2.3.4" # if success

    iex()> ElixirIpify.fetch
    "Nothing goes wrong!" # if error
    ```

  5. You can get also elixir style response:

      ```code
      iex()> ElixirIpify.get
      {:ok, "1.2.3.4"} # if success

      iex()> ElixirIpify.get
      {:error, "Nothing goes wrong!"} # if error
      ```

## License

MIT &copy; Zoltán Gabulya
