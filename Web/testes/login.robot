*** Settings ***    

Resource        ../Web/resource/login_resource.robot
Test Setup      Abrir navegador
Test Teardown   Fechar navegador

*** Test Cases ***
CT-01 - Login de usuario administrador com sucesso
    Acessar pagina de login
	Digitar email valido
    Digitar senha valida
    Clicar no botao entrar
    Verificar se logou com sucesso
    
    
