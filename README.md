# Projeto de automação do carrinho.

## Pré-requisitos:
- [Ruby](https://rubyinstaller.org/)

## Ferramentas utilizadas:
- [VSCode](https://code.visualstudio.com/ "VSCode")

## Instalação:

Em um terminal, dentro da pasta do projeto, execute o seguinte comando para instalar as dependência:
```
gem install bundler
```
Com essa dependência é possivel baixar todas as gem do gemfile
```
bundler install 
```

## Execução dos testes 
Feita com o comando
```
  cucumber -p chrome -t @carrinho  -p prod
```
