class CartPage < SitePrism::Page
    set_url 'https://carrinho.casasbahia.com.br/?idsku=55014843'
	
	element :name_product, 'strong[data-id=nome]'
		
end