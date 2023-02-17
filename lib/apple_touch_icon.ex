defmodule AppleTouchIcon do
  @moduledoc """
  Documentation for `AppleTouchIcon`.
  """

  @default_sizes [
    {57, 57},
    {72, 72},
    {76, 76},
    {114, 114},
    {120, 120},
    {144, 144},
    {152, 152},
    {180, 180}
  ]
  @default_device_attributes [
    %{
      "min-device-width": 481,
      "max-device-width": 1024,
      layout: "landscape",
      type: "px",
      "webkit-device-pixel-ratio": 2
    }
  ]

  @default_path "/images"

  @doc """
  Render the icons.

  ## Examples

      iex> AppleTouchIcon.render()
      <html ... >
  """

  def render() do
    render(
      @default_path,
      @default_sizes,
      @default_device_attributes
    )
  end

  def render(
        path,
        sizes \\ @default_sizes,
        device_attributes \\ @default_device_attributes
      ) do
    header = "<link rel=\"apple-touch-icon\" href=\"#{path}/apple-touch-icon.png'/>"

    icons =
      for {h, w} <- sizes do
        size = "#{h}x#{w}"

        "<link rel='apple-touch-icon' sizes='#{size}' href='#{path}/apple-touch-icon-#{size}.png'/>"
      end

    attributes =
      for param <- device_attributes do
        case param do
          %{
            "min-device-width": min_w,
            "max-device-width": max_w,
            orientation: orientation,
            type: type,
            "webkit-device-pixel-ratio": pr
          } ->
            size = "#{min_w}x#{max_w}"
            min_w = "#{min_w}#{type}"
            max_w = "#{max_w}#{type}"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-#{orientation}-#{size}.png' media='screen and (min-device-width: '#{min_w} ') and (max-device-width: '#{max_w}') and (-webkit-device-pixel-ratio: '#{pr}') and (orientation:'#{orientation}')' />"

          %{
            "min-device-width": min_w,
            "max-device-width": max_w,
            orientation: orientation,
            type: type
          } ->
            size = "#{min_w}x#{max_w}"
            min_w = "#{min_w}#{type}"
            max_w = "#{max_w}#{type}"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-#{orientation}-#{size}.png' media='screen and (min-device-width: '#{min_w} ') and (max-device-width: '#{max_w}') and (orientation:'#{orientation}')' />"

          %{"min-device-width": min_w, "max-device-width": max_w, orientation: orientation} ->
            size = "#{min_w}x#{max_w}"
            min_w = "#{min_w}px"
            max_w = "#{max_w}px"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-#{orientation}-#{size}.png' media='screen and (min-device-width: '#{min_w} ') and (max-device-width: '#{max_w}')  and (orientation:'#{orientation}')' />"

          %{"min-device-width": min_w, "max-device-width": max_w} ->
            size = "#{min_w}x#{max_w}"
            min_w = "#{min_w}px"
            max_w = "#{max_w}px"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-portrait-#{size}.png' media='screen and (min-device-width: '#{min_w} ') and (max-device-width: '#{max_w}') />"

          %{
            "device-width": w,
            "device-height": h,
            orientation: orientation,
            type: type,
            "webkit-device-pixel-ratio": pr
          } ->
            size = "#{w}x#{h}"
            device_width = "#{w}#{type}"
            device_height = "#{h}#{type}"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-#{orientation}-#{size}.png' media='screen and (device-width: '#{device_width} ') and (device-height: '#{device_height}') and (-webkit-device-pixel-ratio: '#{pr}') and (orientation:'#{orientation}')' />"

          %{"device-width": w, "device-height": h, orientation: orientation, type: type} ->
            size = "#{w}x#{h}"
            device_width = "#{w}#{type}"
            device_height = "#{h}#{type}"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-#{orientation}-#{size}.png' media='screen and (device-width: '#{device_width} ') and (device-height: '#{device_height}') and (orientation:'#{orientation}')' />"

          %{"device-width": w, "device-height": h, orientation: orientation} ->
            size = "#{w}x#{h}"
            device_width = "#{w}px"
            device_height = "#{h}px"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-#{orientation}-#{size}.png' media='screen and (device-width: '#{device_width} ') and (device-height: '#{device_height}') and (orientation:'#{orientation}')' />"

          %{"device-width": w, "device-height": h} ->
            size = "#{w}x#{h}"
            device_width = "#{w}px"
            device_height = "#{h}px"

            "<link rel='apple-touch-startup-image' href='#{path}/ipad-portrait-#{size}.png' media='screen and (device-width: '#{device_width} ') and (device-height: '#{device_height}') />"

          _ ->
            {:error, "invalid device attributes"}
        end
      end

    header <> Enum.join(icons ++ attributes)
  end
end
