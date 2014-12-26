defmodule PorcelainExample.Mixfile do
  use Mix.Project

  def project do
    [app: :porcelain_example,
     version: "0.1.0",
     elixir: ">= 0.14.0 and < 2.0.0",
     deps: deps]
  end

  def application do
    [applications: [:porcelain],
     mod: {PorcelainExample, []}]
  end

  defp deps do
    [{:porcelain, "2.0.0"}]
  end
end
