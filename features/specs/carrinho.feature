#language: pt

Funcionalidade: Adicionar produto ao carrinho
 Como cliente das Casas Bahia
 Quero adicionar um produto no carrinho    
 Para reservar meu produto   
		
	@carrinho @cb
	Esquema do Cenário: Adicionar um <produto> no carrinho direto pela URL

        Dado que que tento acessar direto a url de carrinho com o <numero do sku>
        Quando vejo se produto possui seguro
            | possui           |  <tem seguro>  |
        Então valido o produto no carrinho
            |  nome do produto |  <nome do produto>  |
        Exemplos:
            | numero do sku    | tem seguro | nome do produto     |
            | 55014843         | sim        | iphone XR           |
            | 50000639         | nao        | Fritadeira Elétrica |


#need implementation
#Cenário: Adicionar um <produto> no carrinho vindo pela vitrine

#need implementation
#Cenário: Adicionar um <produto> no carrinho vindo pelo google
	