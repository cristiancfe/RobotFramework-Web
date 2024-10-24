*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${url_base}       https://automacao.qacoders.dev.br
${email_input}    id=email
${email_valido}   sysadmin@qacoders.com
${senha_input}    id=password
${senha_valida}   1234@Test
${botao_input}    id=login
${url_home}       https://automacao.qacoders.dev.br/home
${Browser}        chrome
${headless}       headlesschrome 
*** Keywords ***

Abrir navegador
    Open Browser    browser=${headless}
	Maximize Browser Window
Fechar navegador
    Close Browser

Acessar pagina de login
    Go To     url=${url_base}/login     
    Capture Page Screenshot    screenshot/login.png
Digitar email valido
    Wait Until Element Is Visible    locator=${email_input}    timeout=7
    Input Text    locator=${email_input}    text=${email_valido}
    
Digitar senha valida
    Wait Until Element Is Visible    locator=${email_input}     timeout=7
    Input Password    locator=${senha_input}    password=${senha_valida}
    Input Text    locator=${senha_input}    text=${senha_valida}
    Log    ${senha_valida}

Clicar no botao entrar
    Wait Until Element Is Visible    locator=${botao_input}    timeout=7
    Click Button    locator=${botao_input}
    Capture Page Screenshot    screenshot/login_preenchido.png
Verificar se logou com sucesso
    Wait Until Page Contains    text=Logout    timeout=7
    ${current_url}    Get Location
    Should Be Equal    ${current_url}    ${url_home}    A URL atual não é a esperada!
    Capture Page Screenshot   screenshot/logado.png    

# Iniciar gravacao
#     Start Video Recording  alias=none  nome=video  fps=none  size_percentage=26    embed=True  embed_width=1000px  monitor=1

# Parar gravacao
#     Stop Video Recording  alias=none










    

