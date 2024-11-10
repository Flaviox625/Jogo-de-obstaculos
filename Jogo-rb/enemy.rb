class Enemy
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
    @width = 50
    @height = 50
    @vel_x = 2
  end

  def update
    @x += @vel_x
    if @x <= 0 || @x + @width >= 640
      @vel_x *= -1
    end
  end

  def draw
    Gosu.draw_rect(@x, @y, @width, @height, Gosu::Color::RED, 0)
  end
end
