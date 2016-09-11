defmodule PolicyWonk.Mixfile do
  use Mix.Project

  @version "0.1.0"
  @url "https://github.com/boydm/policy_wonk"

  def project do
    [
      app: :policy_wonk,
      version: @version,
      elixir: "~> 1.3",
      elixirc_paths: elixirc_paths(Mix.env),
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps(),
      package: [
        contributors: ["Boyd Multerer"],
        maintainers: ["Boyd Multerer"],
        licenses: ["MIT"],
        links: %{github: @url}
      ],

      name: "policy_wonk",
      source_url: @url,
      docs: docs(),
      description: """
      Plug based authorization and resource loading.
      Aimed at Phoenix, but depends only on Plug.
      MIT license
      """
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:plug, "~> 1.1"},

      # Docs dependencies
      {:ex_doc, "~> 0.13", only: :dev},
      {:inch_ex, "~> 0.5", only: :dev}
    ]
  end

  defp docs do
    [
      extras: ["README.md"],
      source_ref: "v#{@version}",
      main: "PolicyWonk"
    ]
  end
end





