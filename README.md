# AppleTouchIcon

**Apple Touch Icon**


Add support for apple touch header icons,
similar to the Favicon, the Apple touch icon or apple-touch-icon. png is a file used for a web page icon on the Apple iPhone, iPod Touch, and iPad


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `apple_touch_icon` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:apple_touch_icon, "~> 0.1.0"}
  ]
end
```

orientation can be either landscape or portrait
imagefolder can be spacified /images is default


Icons  need to be added in the images folder in the following format /imagefolder/apple-touch-icon.png and imagefolder/apple-touch-icon-height-width.png and /ipad-orientation-height-width.png
for each height/width/orientation combo


## usage
in your layout template  place the following in the header block

```elixir
## render the default header
AppleTouchIcon.render()
## render a single icon
AppleTouchIcon.render([])
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/apple_touch_icon>.

