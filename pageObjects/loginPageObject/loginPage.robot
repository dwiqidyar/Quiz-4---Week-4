*** Settings ***
Resource         ../base/base.robot
Variables        login-locators.yaml

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123

*** Keywords ***
Verifikasi Input From Login
    Wait Until Element Is Visible    ${username_input}
    Wait Until Element Is Visible    ${password_input}
    Wait Until Element Is Visible    ${log_in_button}
Input Username On Login Page
    [Arguments]    ${Email}=${VALID_EMAIL}
    Input Text    ${username_input}    ${Email}

Input Password On Login Page
    Wait Until Element Is Visible    ${username_input}
    [Arguments]   ${password}
    Input Text    ${password_input}     ${password}
Click Sign In Button on Login Page
    Click Element     ${log_in_button}

Verifikasi Login
    Wait Until Element Is Visible    ${verify_login}

#Nontifikasi gagal Login
 #   Click Element    my_element
  #  Wait Until Page Contains Element    //android.widget.Toast[@text="Invalid username/password"]
