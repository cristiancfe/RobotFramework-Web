-   URL's  
	URL Login				https://automacao.qacoders.dev.br/login
	URL Home 				https://automacao.qacoders.dev.br/home
	URL Empresa 			https://automacao.qacoders.dev.br/company
	URL Cliente 			https://automacao.qacoders.dev.br/client
	URL Usuarios			https://automacao.qacoders.dev.br/user
	URL Diretorias			https://automacao.qacoders.dev.br/board
	URL Centro de Custos	https://automacao.qacoders.dev.br/costCenter
	URL Departamento		https://automacao.qacoders.dev.br/department

- Página de Login

	email: 							#email
	senha: 							#password
	botão entrar: 					#login

	esqueci minha senha 			 a.css-rpkgv3      redireciona para Login
	Acesse aqui          			 a.css-c3vxn9	   redireciona para Login

	Usuario  sysadmin@qacoders.com
	senha    1234@Test

- Página Home			xpath							CSS

	Botão Logout  	//button[@class='css-1nvbq2d']		button.css-1nvbq2d
	Cadastros		//div[@id='Cadastros']				#Cadastros
		
		Pesquisar   //input[@id=':rb:']         		input[class$='ss-1o6z5ng'] input[class$='css-1o6z5ng']
		Nome		//div[text()='Nome']				div >.css-1frs13b >.css-wgzttu:nth-child(1)

		Empresa											#Empresa
		nome da pagina  //h5[text()="Novo Cadastro"]	.css-np5g2k
		de cadastro

		novo cadastro //button[@id='Novo Cadastro']		.css-fvzsut
			Razão Social								#companyName
			Nome fantasia								#fantasyName
			Email										#companyMail
			CNPJ										#matriz
			Telefone									#telephone
			Descrição de Serviço						#serviceDescription
			Nome do responsável							#fullName
			Cep 										#zipCode
			País 										#country
			Cidade										#city
			Estado										#state
			Bairro 										#district
			Rua 										#street
			Numero do imóvel 							#number
			Complemento									#complement
			Salvar										#save
			Cancelar									#cancel

		Cliente
			Pesquisar 									input[class$='css-1o6z5ng']
			Novo Cadastro								.css-fvzsut
			Nome Complemento							#fullName
			Data de Nascimento 							#birthDate
			Email 										#mail
			Telefone									#mail
			Cargo										#currentRole
			RG											input[name='rg']
			CPF 										input[name='cpf']
			Cep 										#zipCode
			País 										#country
			Cidade										#city
			Estado										#state
			Bairro 										#district
			Rua 										#street
			Numero do imóvel 							#number
			Complemento									#complement
			Salvar										#save
			Cancelar									#cancel

		Usuario
			Nome Complemento							#fullName
			Email 										#mail
			cpf											#cpf
			senha										#password
			confirmar senha 							#confirmPassword
			salvar novo									#save
			Cancelar									#cancel

		Diretorias
			nome da Diretoria							#boardName
			salvar novo									#save
			Cancelar									#cancel

		Centro de Custos
			Nome do centro de Custos					#costCentername
			Diretoria dropdown							#Diretoria
			escolher opção 4							option:nth-child(4)
			salvar novo									#save
			Cancelar									#cancel

		Departamento
			nome do Departamento						#departmentName
			centro de custos dropdown					.css-rlxyip
			salvar novo									#save
			Cancelar									#cancel

botão logout: 	//button[text()='Logout']				.css-1nvbq2d


Links "esqueci senha" e "Acesse aqui" redirecionam para tela de Login
