require 'gosu'
require_relative 'player'
require_relative 'enemy'

class Game < Gosu::Window
  def initialize
    super(800, 600)  # Mudando a resolução para 800x600
    self.caption = "Desviando de Tudo"
    @player = Player.new(self)

    @levels = [
      # Fase 1
      {
        obstacles: [
          { x: 200, y: 500, width: 50, height: 50 },  # Ajustado para a resolução de 800x600
          { x: 400, y: 450, width: 50, height: 50 },
          { x: 500, y: 400, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(300, 500)]
      },
      # Fase 2
      {
        obstacles: [
          { x: 150, y: 500, width: 50, height: 50 },
          { x: 350, y: 450, width: 50, height: 50 },
          { x: 550, y: 400, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(250, 500), Enemy.new(500, 400)]
      },
      # Fase 3
      {
        obstacles: [
          { x: 100, y: 500, width: 50, height: 50 },
          { x: 250, y: 450, width: 50, height: 50 },
          { x: 400, y: 400, width: 50, height: 50 },
          { x: 600, y: 350, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(150, 500), Enemy.new(350, 400), Enemy.new(550, 350)]
      },
      # Fase 4
      {
        obstacles: [
          { x: 150, y: 550, width: 50, height: 50 },
          { x: 350, y: 500, width: 50, height: 50 },
          { x: 550, y: 450, width: 50, height: 50 },
          { x: 750, y: 400, width: 50, height: 50 },
          { x: 900, y: 350, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(200, 550), Enemy.new(400, 450), Enemy.new(600, 350), Enemy.new(800, 300)]
      },
      # Fase 5
      {
        obstacles: [
          { x: 100, y: 600, width: 50, height: 50 },
          { x: 300, y: 550, width: 50, height: 50 },
          { x: 500, y: 500, width: 50, height: 50 },
          { x: 700, y: 450, width: 50, height: 50 },
          { x: 900, y: 400, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(200, 600), Enemy.new(400, 550), Enemy.new(600, 500), Enemy.new(800, 450)]
      },
      # Fase 6
      {
        obstacles: [
          { x: 100, y: 600, width: 50, height: 50 },
          { x: 250, y: 550, width: 50, height: 50 },
          { x: 400, y: 500, width: 50, height: 50 },
          { x: 550, y: 450, width: 50, height: 50 },
          { x: 700, y: 400, width: 50, height: 50 },
          { x: 850, y: 350, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(200, 600), Enemy.new(400, 500), Enemy.new(600, 450), Enemy.new(800, 400), Enemy.new(1000, 350)]
      },
      # Fase 7
      {
        obstacles: [
          { x: 100, y: 600, width: 50, height: 50 },
          { x: 300, y: 550, width: 50, height: 50 },
          { x: 500, y: 500, width: 50, height: 50 },
          { x: 700, y: 450, width: 50, height: 50 },
          { x: 900, y: 400, width: 50, height: 50 },
          { x: 1100, y: 350, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(150, 600), Enemy.new(350, 550), Enemy.new(550, 500), Enemy.new(750, 450), Enemy.new(950, 400)]
      },
      # Fase 8
      {
        obstacles: [
          { x: 100, y: 600, width: 50, height: 50 },
          { x: 250, y: 550, width: 50, height: 50 },
          { x: 400, y: 500, width: 50, height: 50 },
          { x: 550, y: 450, width: 50, height: 50 },
          { x: 700, y: 400, width: 50, height: 50 },
          { x: 850, y: 350, width: 50, height: 50 },
          { x: 1000, y: 300, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(150, 600), Enemy.new(350, 550), Enemy.new(550, 500), Enemy.new(750, 450), Enemy.new(950, 400), Enemy.new(1150, 350)]
      },
      # Fase 9
      {
        obstacles: [
          { x: 150, y: 600, width: 50, height: 50 },
          { x: 350, y: 550, width: 50, height: 50 },
          { x: 550, y: 500, width: 50, height: 50 },
          { x: 750, y: 450, width: 50, height: 50 },
          { x: 950, y: 400, width: 50, height: 50 },
          { x: 1150, y: 350, width: 50, height: 50 },
          { x: 1350, y: 300, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(200, 600), Enemy.new(400, 550), Enemy.new(600, 500), Enemy.new(800, 450), Enemy.new(1000, 400), Enemy.new(1200, 350)]
      },
      # Fase 10
      {
        obstacles: [
          { x: 100, y: 600, width: 50, height: 50 },
          { x: 300, y: 550, width: 50, height: 50 },
          { x: 500, y: 500, width: 50, height: 50 },
          { x: 700, y: 450, width: 50, height: 50 },
          { x: 900, y: 400, width: 50, height: 50 },
          { x: 1100, y: 350, width: 50, height: 50 },
          { x: 1300, y: 300, width: 50, height: 50 }
        ],
        enemies: [Enemy.new(150, 600), Enemy.new(350, 550), Enemy.new(550, 500), Enemy.new(750, 450), Enemy.new(950, 400), Enemy.new(1150, 350), Enemy.new(1350, 300)]
      }
    ]

    @level = 0
    load_level(@level)
  end

  def load_level(level)
    @obstacles = @levels[level][:obstacles]
    @enemies = @levels[level][:enemies]
    @player = Player.new(self)
  end

  def update
    if button_down?(Gosu::KbLeft)
      @player.move_left
    elsif button_down?(Gosu::KbRight)
      @player.move_right
    else
      @player.stop
    end

    if button_down?(Gosu::KbSpace) || button_down?(Gosu::KbUp)
      @player.jump
    end

    @player.update(@obstacles)

    @enemies.each(&:update)

    # Verificar colisão com inimigos
    @enemies.each do |enemy|
      if collision?(@player, enemy)
        puts "Game Over!"
        close
      end
    end

    if @player.x > 640
      next_level
    end
  end

  def next_level
    @level += 1
    if @level < @levels.size
      load_level(@level)
      puts "Próxima fase!"
    else
      puts "Você venceu o jogo!"
      close
    end
  end

  def collision?(player, enemy)
    player.x < enemy.x + 50 &&
    player.x + 50 > enemy.x &&
    player.y < enemy.y + 50 &&
    player.y + 50 > enemy.y
  end

  def draw
    Gosu.draw_rect(0, 0, 800, 600, Gosu::Color::CYAN, 0)  # Mudando o fundo para a nova resolução

    Gosu.draw_rect(0, 570, 800, 30, Gosu::Color::GREEN, 0)  # Ajustando o chão para a nova resolução

    @player.draw

    @obstacles.each do |obs|
      Gosu.draw_rect(obs[:x], obs[:y], obs[:width], obs[:height], Gosu::Color::GRAY, 0)
    end

    @enemies.each(&:draw)
  end
end

Game.new.show
