defmodule SpandexOTLP.MixProject do
  use Mix.Project

  @version "0.1.0-rc.2"
  @source_url "https://github.com/JohnDoneth/spandex_otlp"

  def project do
    [
      app: :spandex_otlp,
      description:
        "An adapter for Spandex that allows the export of tracing data to an OTLP compatible service.",
      version: @version,
      elixir: "~> 1.14",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: docs(),
      package: package(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.json": :test,
        "coveralls.html": :test
      ],
      source_url: @source_url
    ]
  end

  defp package do
    [
      name: :spandex_otlp,
      maintainers: ["John Doneth"],
      licenses: ["MIT License"],
      links: %{
        GitHub: @source_url,
        Changelog: "#{@source_url}/blob/master/CHANGELOG.md"
      }
    ]
  end

  defp docs do
    [
      main: "readme",
      source_ref: @version,
      extras: ["README.md"]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  defp deps do
    [
      {:credo, ">= 0.0.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.24", only: :dev, runtime: false},
      {:excoveralls, ">= 0.0.0", only: [:test]},
      {:grpc, "~> 0.6"},
      {:protobuf, "~> 0.12"},
      {:spandex, "~> 3.0"},
      {:telemetry, "~> 1.0"}
    ]
  end
end
