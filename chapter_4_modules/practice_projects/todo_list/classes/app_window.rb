# frozen_string_literal: true

require "ruby2d"
require_relative "input_output"

class AppWindow
  def initialize
    # Create a new window. The "set" method can take options such as the window's width, height, and title.
    Ruby2D::Window.set width: 1120, height: 950, title: "Todo List App"

    # Show the window and start the event loop
    Ruby2D::Window.show
  end

  def add_text(text, x:, y:, size: 20, color: "green")
    # Create a new text object
    text_object = Ruby2D::Text.new(
      text,
      x: x, y: y,
      size: size,
      color: color
    )

    # Add the text object to the window
    Ruby2D::Window.add text_object
  end
end
