# *** Settings ***
# Library    SeleniumLibrary

# *** Variables ***
# ${BROWSER}      chrome
# ${EXPECTED_URL} https://www.exemplo.com/pagina-desejada

# *** Test Cases ***
# Verificar URL Esperada
#     Open Browser    https://www.exemplo.com/pagina-desejada    ${BROWSER}
#     Check Current URL    ${EXPECTED_URL}
#     [Teardown]    Close Browser

# *** Keywords ***
# Check Current URL
#     [Arguments]    ${expected_url}
#     ${current_url}=    Get Location
#     Should Be Equal    ${current_url}    ${expected_url}    A URL atual não é a esperada!

