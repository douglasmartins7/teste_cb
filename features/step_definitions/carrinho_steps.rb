#encoding: utf-8

Dado("que que tento acessar direto a url de carrinho") do
   visit('https://carrinho.casasbahia.com.br/?idsku=55014843')
    sleep 5
end
  
Dado("vejo se produto possui seguro") do |table|
    # table is a Cucumber::MultilineArgument::DataTable
    pending # Write code here that turns the phrase above into concrete actions
end
  
Quando("valido {int} no carrinho") do |int|
    pending # Write code here that turns the phrase above into concrete actions
end
  
Então("ele é reservado") do
    pending # Write code here that turns the phrase above into concrete actions
end