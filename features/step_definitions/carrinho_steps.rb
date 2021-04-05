#encoding: utf-8
require 'pry'

Dado("que que tento acessar direto a url de carrinho com o {int}") do |produto|
    @insurancePage = InsurancePage.new
    @cartPage = CartPage.new
   
    @produto = produto
    visit("https://carrinho.casasbahia.com.br/?idsku=#{@produto}")
end
  
Dado("vejo se produto possui seguro") do |table|
    @tem_seguro = table.rows_hash

    @insurancePage.continuar.click if @tem_seguro['possui'] == 'sim' 
end
  
Então("valido o produto no carrinho") do |table|
    @nome_do_produto = table.rows_hash
    
    expect(@cartPage.name_product.text).to include @nome_do_produto["nome do produto"]
end


  
