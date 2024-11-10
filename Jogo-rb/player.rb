class Player
  attr_reader :x, :y

  def initialize(window)
    @window = window
    @x = 100      # Posição inicial horizontal
    @y = 450      # Posição inicial vertical ajustada para 450 para centralizar o personagem na tela
    @width = 50
    @height = 50
    @vel_y = 0
    @on_ground = true
    @jumping = false
    @speed = 5

    # Carregar as imagens
    @image_right = Gosu::Image.new("player_right.png")
    @image_left = Gosu::Image.new("player_left.png")
    @current_image = @image_right
  end

  # Movimentação
  def move_left
    @x -= @speed
    @current_image = @image_left
  end

  def move_right
    @x += @speed
    @current_image = @image_right
  end

  def stop
    @x = @x  # O jogador não se move se não for pressionado nada
  end

  # Lógica do pulo
  def jump
    if @on_ground  # Permite pular apenas se estiver no chão
      @vel_y = -12  # Força do pulo
      @on_ground = false
      @jumping = true
    end
  end

  # Atualização do jogador
  def update(obstacles)
    # A gravidade age sobre o jogador, caso ele não esteja no chão
    if !@on_ground
      @vel_y += 0.5  # Gravidade
    end

    # Atualiza a posição do jogador com base na velocidade vertical
    @y += @vel_y

    # Verificar colisão com o chão ou plataformas
    check_collision_with_ground(obstacles)

    # Se o jogador estiver no chão, ele não cai mais
    if @on_ground
      @vel_y = 0  # Resetando a velocidade vertical ao atingir o chão
    end
  end

  # Função que verifica colisões com o chão ou plataformas
  def check_collision_with_ground(obstacles)
    @on_ground = false

    # Checa se o jogador está tocando o chão
    if @y + @height >= 570  # O chão ajustado para a nova resolução
      @y = 570 - @height
      @on_ground = true
    end

    # Verificar se o jogador está tocando uma plataforma
    obstacles.each do |obs|
      if @x + @width > obs[:x] && @x < obs[:x] + obs[:width] &&
         @y + @height <= obs[:y] && @y + @height + @vel_y >= obs[:y]
        @y = obs[:y] - @height  # Ajusta a posição do jogador em cima da plataforma
        @vel_y = 0  # Para a velocidade de queda
        @on_ground = true  # O jogador está sobre uma plataforma
        break
      end
    end
  end

  # Desenha o jogador
  def draw
    @current_image.draw(@x, @y, 1)
  end

  # Eventos de teclas pressionadas
  def button_down(id)
    case id
    when Gosu::KB_LEFT
      move_left
    when Gosu::KB_RIGHT
      move_right
    when Gosu::KB_SPACE, Gosu::KB_UP
      jump
    end
  end

  # Eventos de teclas soltas
  def button_up(id)
    case id
    when Gosu::KB_LEFT, Gosu::KB_RIGHT
      stop
    end
  end
end
