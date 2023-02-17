defmodule AppleTouchIcon.MixProject do
  use Mix.Project

  def project do
    [
      app: :apple_touch_icon,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "AppleTouchIcon",
      source_url: "https://github.com/mithereal/ex_apple_touch_icon",
      description: "Similar to the Favicon, the Apple touch icon is used for the web page icon on the Apple iPhone, iPod Touch, and iPad",
      docs: docs(),
      package: package(),
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/mithereal/ex_apple_touch_icon"}
    ]
  end

  defp docs do
    []
  end
end
