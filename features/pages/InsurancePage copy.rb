class InsurancePage < SitePrism::Page
	element :continuar, 'button[data-id=btnContinuar]'

	def click_in(customer)
		self.continuar.click
	end

	def is_there
		
	end
end