*** Settings ***
# # https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-data-sections
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/searchFiligt/SearchFlight.robot
Resource    ../pageObjects/signoutFlight/SignoutFlight.robot
Resource    ../pageObjects/base/base.robot


*** Test Cases ***
signout
    # https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#test-data-sections
    # Buka Aplikasi
    open aplikasi mac
    # # Verifikasi Home Page Muncul
    # Verifikasi Home Page
    # # Tekan Tombol Login
    # Tekan tombol Sign In
    # # Verifikasi Page Login
    # Verifikasi Input From Login
    # # Mengisi User Name yang Benar
    # Input txt Email
    # # Mengisi Password yang Benar
    # Input txt Password
    # # Tekan Tombol Sign In
    # Click tombol Sign in
    # # Verifikasi User Berhasil Login
    # Verivikasi login
    # # tekan tombol seaech pada halaman home
    # Tekan tombol search
    # # Verifikasi User Berhasil masuk ke page search
    # Verivikasi search
    # #signout
    # signout
    # # Verifikasi Home Page Muncul
    # Verifikasi Home Page
    
    # # Tutup aplikasi
    # Close Flight Application

