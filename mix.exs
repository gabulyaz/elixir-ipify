defmodule ElixirIpify.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_ipify,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger,:httpotion]]
  end

  defp description do
   """
   A simple elixir library for ipify: A Simple IP Address API.
   """
  end

  defp package do
  [# These are the default files included in the package
   name: :elixir_ipify,
   files: ["lib", "test", "config", "mix.exs", "readme.md", "license"],
   maintainers: ["Zoltán Gabulya"],
   licenses: ["The MIT License (MIT)"],
   links: %{"GitHub" => "https://github.com/gabulyaz/elixir-ipify"}
  ]
  end




  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:httpotion, "~> 3.0.0"}]
  end
end
