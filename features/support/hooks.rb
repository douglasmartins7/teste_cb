##No Futuro implementar para logar para entrar no carrinho já logado
# Before('@login') do
# 	@login = LoginPage.new
# 	@login.load
# 	@login.do_login('','')
# end

##No futuro executou o logout e valida se carrinho permanece
# After('@logout') do
# 	dash.nav.do_logout
# end

After do |scenario| 
	@file_name = scenario.name.tr(' ', '_')

	@file_name = @file_name.gsub(',', '').gsub('(', '')
	@file_name = @file_name.delete(')').delete('#')

	@target = "reports/screenshots/#{@file_name.downcase!}.png"

	page.save_screenshot(@target)
	embed(@target, 'image/png', 'Clique aqui para ver a evidência')
end