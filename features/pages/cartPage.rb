class CartPage < SitePrism::Page
    set_url 'https://carrinho.casasbahia.com.br/?idsku=55014843'
	
	element :search_field, 'input[name=search]'
	element :search_submit, 'button[id*=search]'
	element :search_alert, '.alert-warning'

	
end