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
image_folder can be specified /images is default


Icons  need to be added in the images folder in the following format /image_folder/apple-touch-icon.png and /image_folder/apple-touch-icon-height-width.png and /image_folder/ipad-orientation-height-width.png
for each height/width/orientation combo


## usage
in your layout template  place the following in the header block

```elixir
## render the default header
AppleTouchIcon.render()
## render the default header specifying the path to the images
AppleTouchIcon.render("/images")
## render a single icon
AppleTouchIcon.render(nil,nil)
## render all options
url = "/images"
default_sizes = [
    {57, 57},
    {72, 72},
    {76, 76},
    {114, 114},
    {120, 120},
    {144, 144},
    {152, 152},
    {180, 180}
  ]
 default_device_attributes =[
    %{
      "min-device-width": 481,
      "max-device-width": 1024,
      "webkit-device-pixel-ratio": 2,
      layout: "landscape",
      type: "px"
    },
    %{
      "min-device-width": 1025,
      "max-device-width": 2222
    },
    %{
      "device-width": 481,
      "device-height": 1024,
      layout: "portrait"
    }
  ]
AppleTouchIcon.render(url,default_sizes,default_device_attributes)
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/apple_touch_icon>.

