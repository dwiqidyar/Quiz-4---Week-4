*** Settings ***
Resource     ../base/base.robot
Variables    home-locators.yaml


*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible      ${logo_homePage}

Click Sign In Button On Home Page
    Click Element    ${sign-in-button}