# *** Settings ***
# Library    SeleniumLibrary

# *** Variables ***
# ${BROWSER}    chrome
# ${URL}        https://www.exemplo.com/pagina-desejada
# ${EXPECTED_TEXT}    Bem-vindo à Página!

# *** Test Cases ***
# Verificar Texto na Página
#     Open Browser    ${URL}    ${BROWSER}
#     Check Text on Page    ${EXPECTED_TEXT}
#     [Teardown]    Close Browser

# *** Keywords ***
# Check Text on Page
#     [Arguments]    ${expected_text}
#     Page Should Contain    ${expected_text}    O texto esperado não está na página!
#  ou

# *** Variables ***
# ${ELEMENT_LOCATOR}    xpath=//h1
# ${EXPECTED_TEXT}      Bem-vindo à Página!

# *** Keywords ***
# Check Specific Element
#     [Arguments]    ${element_locator}    ${expected_text}
#     Element Should Contain    ${element_locator}    ${expected_text}    O texto esperado não está no elemento correto!
# ou

# *** Settings ***
# Library    SeleniumLibrary

# *** Variables ***
# ${BROWSER}      chrome
# ${URL}          https://www.exemplo.com
# ${ELEMENT}      xpath=//h1
# ${EXPECTED_TEXT}    Bem-vindo à página principal

# *** Test Cases ***
# Verificar Texto em Elemento Específico
#     Open Browser    ${URL}    ${BROWSER}
#     Element Should Contain    ${ELEMENT}    ${EXPECTED_TEXT}    O texto esperado não está no elemento!
#     [Teardown]    Close Browser
 erro E
#css-laiely role-alert
#css-1xsto0d
//button[@id='Novo Cadastro']	