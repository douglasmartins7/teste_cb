#language: pt

Funcionalidade: Adicionar produto ao carrinho direto pela Url de carrinho
 Como cliente das Casas Bahia
 Quero adicionar um produto no carrinho    
 Para reservar meu produto   

	Contexto: Acesso
		Dado que que tento acessar direto a url de carrinho
		
	@carrinho
	Esquema do Cenário: Adicionar um <produto> no carrinho 

    E vejo se produto possui seguro
    | possui |  <tem seguro>  |
    Quando valido <produto> no carrinho
    Então ele é reservado
    Exemplos:
    | produto  | tem seguro |
    | 55014843 | sim        |
    | 50000639 |  não       |

	