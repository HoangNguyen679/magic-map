defmodule MagicMap.MixProject do
  use Mix.Project

  def project do
    [
      app: :magic_map,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Docs
      name: "MagicMap",
      source_url: "https://github.com/HoangNguyen679/magic-map",
      docs: [
        main: "MyApp",
        extras: ["README.md"]
      ],

      # Publish
      description: description(),
      package: package(),
    ]
  end

  defp description() do
    "Halo"
  end

  defp package() do
    [
      name: "magicmap",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/HoangNguyen679/magic-map"}
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo,    "~> 1.1",   only: [:dev, :test], runtime: false},
      {:dialyxir, "~> 0.5.1", only: :dev, runtime: false},
      {:ex_doc,   "~> 0.21",  only: :dev, runtime: false},
    ]
  end
end
