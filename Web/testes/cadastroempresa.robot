*** Settings ***
Library                FakerLibrary    locale=pt_BR
Library                SeleniumLibrary
Library                random
Resource               ../resource/login_resource.robot

Test Setup             Abrir navegador

Test Teardown          Fechar navegador

*** Variables ***
${URL}     https://automacao.qacoders.dev.br/company
${servicos}    Consultoria 
${Pais}    Brasil
${Bairro}    Vargas
${Complemento}    Predio A
${EstadoEmpresa}  RS
*** Test Cases ***

CT-01 - Cadastrar Empresa com sucesso
    Acessar pagina de login
    Digitar email valido
    Digitar senha valida
    Clicar no botao entrar
    Verificar se logou com sucesso

        
   
    Click Element    id=Cadastros
    Click Element    id=Empresa
    Capture Page Screenshot    screenshot/Empresa.png 
    Wait Until Element Is Visible    css=button.css-fvzsut
    Click Element    css=button.css-fvzsut
    Capture Page Screenshot    screenshot/CadastroEmpresa.png 
   

    ${novaCompany}    FakerLibrary.Company
    ${TipoSociedade}    FakerLibrary.Company Suffix  
   
    Input Text    id=companyName         ${novaCompany} ${TipoSociedade}
    Capture Page Screenshot    screenshot/NomeCompany.png 
    
    ${NomeFantasia}    FakerLibrary.Company
    ${fantasia}    FakerLibrary.Century   
    ${TipoEmpresa}    FakerLibrary.Bank Country
    Input Text    id=fantasyName         ${NomeFantasia} ${fantasia}
    Capture Page Screenshot    screenshot/Nomefantasia.png 

    ${EmailEmpresa}    FakerLibrary.Free Email    
    Input Text    id=companyMail          ${EmailEmpresa}
    Capture Page Screenshot    screenshot/EmailEmpresa.png 

    ${cnpj}    FakerLibrary.Cnpj
    Input Text    id=matriz      ${cnpj}
    Capture Page Screenshot    screenshot/CnpjEmpresa.png

    # campo telefone tem 13 digitos
    ${telefone}  FakerLibrary.Phone Number 
    ${phone}    Random Number     14    
    Input Text    id=telephone           ${phone}
    Capture Page Screenshot    screenshot/TelefoneEmpresa.png

    Input Text    id=serviceDescription  ${servicos}
    Capture Page Screenshot    screenshot/Descricao.png

    ${ResponsavelEmpresa}    FakerLibrary.Name
    Input Text    id=fullName            ${ResponsavelEmpresa}
    Capture Page Screenshot    screenshot/ResponsavelEmpresa.png
    Capture Page Screenshot    screenshot/Formulario.png
    ${formulario2}     Capture Page Screenshot    screenshot/Formulario.png

    ${cep}    FakerLibrary.Postcode
    Input Text    id=zipCode             ${cep}
    Capture Page Screenshot    screenshot/CepEmpresa.png

    
    Input Text    id=country            ${Pais}
    Capture Page Screenshot    screenshot/PaisEmpresa.png

    ${CidadeEmpresa}    FakerLibrary.City
    Input Text    id=city               ${CidadeEmpresa}
     Capture Page Screenshot    screenshot/CidadeEmpresa.png

      
    Input Text    id=state               ${EstadoEmpresa}
    Capture Page Screenshot    screenshot/EstadoEmpresa.png
    
    Input Text    id=district            ${Bairro}
    Capture Page Screenshot    screenshot/BairroEmpresa.png

    ${RuaEmpresa}    FakerLibrary.Street Name
    Input Text    id=street               ${RuaEmpresa}
    Capture Page Screenshot    screenshot/RuaEmpresa.png

    ${NumeroEmpresa}    FakerLibrary.Numerify
    Input Text    id=number              ${numeroEmpresa}
    Capture Page Screenshot    screenshot/NumeroEmpresa.png
    
    Input Text    id=complement          ${Complemento}
    Capture Page Screenshot    screenshot/ComplementoEmpresa.png
    Capture Page Screenshot    screenshot/Formulario1.png
    ${formulario1}     Capture Page Screenshot    screenshot/Formulario1.png
    Click Element    id=save

    


    








    


         



   




