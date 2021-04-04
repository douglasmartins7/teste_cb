#language: pt

Funcionalidade: Adicionar produto ao carrinho   
 Como cliente das Casas Bahia
 Quero adicionar um produto no carrinho    
 Para reservar meu produto   

	Contexto: Acesso
		Dado que estou na tela de carrinho
		
	@carrinho
	Esquema do Cenário: Adicionar um <produto> no carrinho 

    Quando adiciono <produto> no carrinho
    Então ele é reservado
    Exemplos:
    | produto     |
    | 'Iphone XR' |

	