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
Com essa dependência é possivel baixar todas do gemfile
```
bundler install 
```

## Configuração do ambiente:
A configuração do ambiente é feita no arquivo `.env`, através dele é possível realizar execuções em qualquer um dos ambientes da nova jornada da tribo decisão, ele recebe 3 parâmetros ```bandeira, squad e ambiente``` e cada um deles aceita os seguintes parâmetros:

```
bandeira = casasbahia, pontofrio ou extra
squad = cart, ship ou pay
ambiente = stg, hlg ou sit
```
O arquivo `.env.example`, na raiz do projeto, é um exemplo de arquivo `.env` utilizável.
Para execuções em produção basta manter o arquivo `.env` em branco.

## Execução dos testes 
Para abrir o cypress utilize este comando no terminal:
```
npm run cypress:open 
```
Ou se quiser executar os testes diretamente utilize:
```
npm run cypress:run 
```