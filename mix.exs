defmodule HelloWorld.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_world,
     version: "0.0.1",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
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
    [
      {:cowboy, "~> 1.0.4"},
      {:poison, "~> 1.3.0"},
      {:decimal, "~> 1.1.1"},
      {:ranch, "~> 1.2.0"},
      {:plug, "~> 1.1.0"},
      {:ecto, "~> 1.1.1"},
      {:poolboy, "~> 1.5.1"},
      {:hackney, "~> 1.4.8"},
      {:idna, "~> 1.0.3"},
      {:phoenix, "~> 1.1.2"},
      {:postgrex, "~> 0.10.0"},
      {:ssl_verify_hostname, "1.0.5"},
      {:httpoison, "~> 0.8.1"},
      {:conform, "~> 1.0.0-rc8", only: [:dev]},
      {:fs, "~> 0.9.2"},
      {:jsx, "~> 2.8.0"},
      {:phoenix_html, "~> 2.3.1"},
      {:phoenix_ecto, "~> 2.0.0"},
      {:timex, "~> 1.0.0"},
      {:phoenix_live_reload, "~> 1.0.3", only: [:dev]},
      {:earmark, "~> 0.2.1", only: [:docs]},
      {:bbmustache, "~> 1.0.3", only: [:docs]},
      {:meck, "~> 0.8.4"},
      {:inch_ex, "~> 0.4.0", only: [:docs]},
      {:exrm, "~> 1.0.0-rc7", only: [:dev]},
      {:ex_doc, "~> 0.11.3", only: [:docs]},
      {:getopt, "~> 0.8.2"},
      {:combine, "~> 0.7.0 "}
    ]
  end
end
