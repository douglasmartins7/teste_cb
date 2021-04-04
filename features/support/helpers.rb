# module Helpers
	# def remove_cliente_no_mongo[email]
	# 	client = Mongo::Client.new[$mongo_url]
	# 	client[:customer].delete_many(email: email)
	# 	client.close
	# 	sleep 5
	# end

	# def novo_cliente
	# 	@name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
	# 	@customer = {
	# 		'Nome' => @name,
	# 		'Telefone' => '1199999999',
	# 		'Email' => Faker::Internet.free_email(@name),
	# 		'Tipo' => ['Gold','Prime','Platinum'].sample
	# 	}
	# 	@customer_page.save(@customer)
	# 	@customer
	# end
	
# end