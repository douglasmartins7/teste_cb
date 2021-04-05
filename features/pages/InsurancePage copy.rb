class InsurancePage < SitePrism::Page
	element :continuar, 'button[data-id=btnContinuar]'
	
	def click_button_continue
		self.continuar.click
	end
	
end