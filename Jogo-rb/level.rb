# level.rb
class Level
  def initialize(level_data)
    @level_data = level_data # Dados da fase
    @platforms = [] # Guarda as plataformas ou obstáculos
  end

  def load
    # Carrega as plataformas da fase
  end

  def draw
    # Desenha cada plataforma
  end
end
