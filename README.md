# Desviando de Tudo - Jogo 2D com Gosu

Este é um jogo 2D desenvolvido em Ruby utilizando a biblioteca [Gosu](https://www.ruby-lang.org/en/), que permite criar jogos simples com gráficos e sons.

O objetivo do jogo é controlar um personagem que precisa desviar de obstáculos e inimigos. O personagem pode se mover para a esquerda, para a direita e pular para evitar obstáculos e inimigos.

## Requisitos

Para rodar o jogo, você precisa ter as seguintes ferramentas instaladas:

1. **Ruby**: A versão recomendada é 2.6 ou superior.
2. **VS Code** (ou outro editor de sua preferência).
3. **Gosu gem**: Biblioteca usada para criar o jogo.

## Como rodar o jogo

### Passo 1: Instalar o Ruby

Se você ainda não tem o Ruby instalado, siga as instruções de instalação oficial:

- **Windows**: https://rubyinstaller.org/
- **Mac/Linux**: https://www.ruby-lang.org/en/documentation/installation/

Verifique se o Ruby está instalado corretamente rodando o seguinte comando no terminal:

```bash
ruby -v
Passo 2: Instalar a Gem Gosu
No terminal, instale a gem Gosu com o seguinte comando:

bash
Copiar código
gem install gosu
Passo 3: Baixar ou Clonar o Projeto
Você pode baixar ou clonar o repositório deste jogo com o comando:

bash
Copiar código
git clone https://github.com/seu-usuario/desviando-de-tudo.git
Se você já tiver o código em seu computador, apenas navegue até a pasta do projeto.

Passo 4: Adicionar os Arquivos de Imagem
Certifique-se de que os arquivos de imagem necessários para o jogo (como player_right.png, player_left.png, etc.) estão na mesma pasta que o código Ruby. Se você não tiver esses arquivos, você pode substituí-los por imagens de sua escolha ou criar seus próprios personagens.

Passo 5: Rodar o Jogo
Agora, no VS Code ou no terminal, navegue até a pasta onde os arquivos do jogo estão localizados. Execute o seguinte comando para rodar o jogo:

bash
Copiar código
ruby game.rb
Como Jogar
Movimento: Use as teclas seta para a esquerda ou seta para a direita para mover o personagem.
Pulo: Pressione espaco ou seta para cima para pular.
Objetivo: Desviar de obstáculos e inimigos para continuar avançando pelas fases.
Controle de Teclado
Seta para a esquerda: Movimenta o personagem para a esquerda.
Seta para a direita: Movimenta o personagem para a direita.
Espaço ou Seta para cima: Faz o personagem pular.
