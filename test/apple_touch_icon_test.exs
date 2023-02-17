defmodule AppleTouchIconTest do
  use ExUnit.Case
  doctest AppleTouchIcon


  test "render the header" do
    expected =
      "<link rel=\"apple-touch-icon\" href=\"/images/apple-touch-icon.png'/><link rel='apple-touch-icon' sizes='57x57' href='/images/apple-touch-icon-57x57.png'/><link rel='apple-touch-icon' sizes='72x72' href='/images/apple-touch-icon-72x72.png'/><link rel='apple-touch-icon' sizes='76x76' href='/images/apple-touch-icon-76x76.png'/><link rel='apple-touch-icon' sizes='114x114' href='/images/apple-touch-icon-114x114.png'/><link rel='apple-touch-icon' sizes='120x120' href='/images/apple-touch-icon-120x120.png'/><link rel='apple-touch-icon' sizes='144x144' href='/images/apple-touch-icon-144x144.png'/><link rel='apple-touch-icon' sizes='152x152' href='/images/apple-touch-icon-152x152.png'/><link rel='apple-touch-icon' sizes='180x180' href='/images/apple-touch-icon-180x180.png'/><link rel='apple-touch-startup-image' href='/images/ipad-portrait-481x1024.png' media='screen and (min-device-width: '481px ') and (max-device-width: '1024px') />"

    assert AppleTouchIcon.render() == expected
  end

end
