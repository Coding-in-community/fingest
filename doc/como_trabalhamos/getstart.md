# Como começar?

> Antes de começar a programar, voê precisará instalar algumas dependencias em seu sistema operacional.

## Linux

1. [Instale o git](https://git-scm.com/book/pt-br/v2/Come%C3%A7ando-Instalando-o-Git)
2. [Gere uma chave ssh publica](https://docs.github.com/pt/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
3. [Adicione a chave publica em sua conta github](https://docs.github.com/pt/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)
4. instale o Ruby e suas dependencias
```bash
  sudo apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential nodejs libpq-dev imagemagick zlib1g-dev apt-utils \
  libmagickwand-dev libmagickcore-dev vim sqlite3 npm 
```
5. Instale o yarn
```bash
sudo npm install --global yarn
```
6. Clone o projeto em uma pasta
```Bash
git clone git@github.com:Coding-in-community/fingest.git
```
7. Instale as dependencias do projeto
```Bash
bundle install
```
8. Crie o Banco de dados
```Bash
rails db:setup
```
9. Rode o servidor
```Bash
rails s
```
10. Acesse o sistema pelo navegador

11. Use uma boa IDE. É importante seguir recomendações de Clean Code, do style guide do ruby, de TDD. Usamos Rubocop e Reek para ajudar nas definições de estilo.
12. Escreva um bom programa.