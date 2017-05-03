defmodule Exercism do
  use Mix.Project

  def project do
    [app: :exercism,
      version: "0.1.0",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      deps: deps()]
  end
  def deps do
    [
      {:dogma, "~> 0.1", only: :dev},
    ]
  end
end
