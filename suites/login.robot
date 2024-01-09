*** Settings ***
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/homePageObject/homePage.robot
Test Setup        open aplikasi
Test Teardown     Close Flight Application


*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVALID_USERNAME}          Invalid
${INVALID_PASSWORD}          invalid


*** Test Cases ***
User should be able to login with valid credentials
    # Step 1: Open application
    #open aplikasi
    # Step 2: Verify home page appears
    Verify Home Page Appears
    # Step 3: Click sign in button on home page
    Click Sign In Button On Home Page
    # Step 4: Verify login page appears
    Verifikasi Input From Login
    # Step 5: Input username
    Input Username On Login Page    ${VALID_EMAIL}
    # Step 6: Input password
    Input Password On Login Page    ${VALID_PASSWORD}
    # Step 7: Click Sign in button on login page
    Click Sign In Button on Login Page
    # Step 8: Verify user is logged in
    Verifikasi Login
    # Step 9: Close application
    #Close Flight Application

#User should not be able to login with invalid credentials
Login Invalid Credential
    # open aplikasi
    # Step 2: Verify home page appears
    Verify Home Page Appears
    # Step 3: Click sign in button on home page
    Click Sign In Button On Home Page
    # Step 4: Verify login page appears
    Verifikasi Input From Login
    # Step 5: Input username
    Input Username On Login Page    ${INVALID_USERNAME}
    # Step 6: Input password
    Input Password On Login Page    ${INVALID_PASSWORD}    
    # Step 7: Click Sign in button on login page
    Click Sign In Button on Login Page
    # Step 8: Verify user is logged in
    Nontifikasi gagal Login
    # Step 9: Close application
   # Close Flight Application