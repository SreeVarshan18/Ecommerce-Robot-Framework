*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000

*** Test Cases ***
User Registration Test
    [Documentation]  these is for user registration test
    [Tags]  User
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s

    Click Element  xpath://html/body/section/div/div/div[2]/div[3]/div/form/div/center[2]/p/a
    Test name
    sleep  1s
    Test user age
    sleep  1s
    Test user gender
    sleep  1s
    Test select
    sleep  1s
    Execute Javascript  window.scrollTo(0,900)
    sleep  1s
    Test user address
    sleep  1s
    Test email
    sleep  1s
    Test phone
    sleep  1s
    Test password
    sleep  1s
    Click Button  Xpath:/html/body/section/div/div/div/div/div/div[2]/div/form/center/button
    sleep  4s
    Close Browser

Test User Login
    [Documentation]  these page for user login
    [Tags]  user
    Open Browser  ${web_url}  chrome
    Maximize Browser Window

    sleep  1s
    Test email
    Test password
    Click Button  Xpath:/html/body/section/div/div/div[2]/div[3]/div/form/div/button
    sleep  2s
    Close Browser


Seller Registration Test
    [Documentation]  these is for seller registration
    [Tags]  seller
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Click Element  Xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep  1s
    Click Link  Xpath:/html/body/section/div/div/div/div/div[3]/div/div[2]/div/form/p/a
    sleep  1s
    Test name
    Test phone
    Test email
    Test password
    Test seller Account
    Test IFSC
    Execute Javascript  window.scrollTo(0,300)
    sleep  2s
    Click Button  Xpath:/html/body/section/div/div/div/div/div/div/form/div[7]/center/button
    sleep  2s
    Close Browser

Seller login Test
    [Documentation]  these is for seller login
    [Tags]  seller
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Click Element  Xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep  1s
    Test email
    Test password
    sleep  1s
    Click Button  Xpath:/html/body/section/div/div/div/div/div[3]/div/div[2]/div/form/div[4]/button
    sleep  2s

Add product Test
    [Documentation]  this page for seller add the product
    [Tags]  seller
    Test Product name
    Click Element  name:cat
    Click Element  Xpath:/html/body/div/div/div[2]/form/table/tbody/tr[2]/td[2]/div/select/option[2]
    Test Product price
    Test Product Features
     Execute Javascript  window.scrollTo(0,600)
    Choose File  name:image   E:/ecommerce logo/oneplus.jpg
    sleep  2s
    Click Button  Xpath:/html/body/div/div/div[2]/form/center/button

    sleep  2s

Delete product Test
    [Documentation]  this page for seller delete the product
    [Tags]  seller
    sleep  2s
    Click Element  Xpath:/html/body/nav/div/div/ul/li[2]/a
    Test Delete Product
    sleep  1s
    Click Button  Xpath:/html/body/div/div/div[2]/form/center/button
    sleep  1s
    Click Button  Xpath:/html/body/div[1]/div/div[2]/form/div/div/div/div[3]/button[2]
    sleep  1s
    Click Element  Xpath:/html/body/nav/div/div/ul/li[3]/a
    Close Browser


Buy Product Test
    [Documentation]  these is for buying the product test
    [Tags]  user
    Open Browser  ${web_url}  chrome
    Maximize Browser Window

    sleep  1s
    Test email
    Test password
    Click Button  Xpath:/html/body/section/div/div/div[2]/div[3]/div/form/div/button
    sleep  1s
    Test Search Product
    Click Button  Xpath:/html/body/nav/div/div/div/form/button
    sleep  1s
    Scroll Element into view  xpath=//html/body/div[3]/div/div/center/div/div[2]/center/a
    sleep  1s
    Execute Javascript  window.scrollTo(0,1500)
    Click Element    Xpath://html/body/div[3]/div/div/center/div/div[2]/center/a
    sleep  1s
    Click Element  Xpath://html/body/div/div/div/aside[2]/article/a
    sleep  1s
    Click Button  Xpath://html/body/div/div/div/center[2]/a/button
    sleep  1s
    Click Button  Xpath://html/body/div[2]/div[2]/div[2]/a/button
    sleep  4s
    Close Browser

View order to Seller Test
    [Documentation]  these page for seller
    [Tags]  seller
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Click Element  Xpath:/html/body/nav/div/div/ul/li[2]/a
    Input text  name:email  ramyagandhi16@gmail.com
    Input text  name:pass  R@mya12345
    Click Button  Xpath:/html/body/section/div/div/div/div/div[3]/div/div[2]/div/form/div[4]/button
    Click Element  Xpath://html/body/nav/div/div/ul/li[4]/a
    sleep  2s
    Click Element  Xpath://html/body/nav/div/div/div/div/a/img
    Click Element  Xpath://html/body/nav/div/div/div/div/ul/li[3]/a
    sleep  1s
    Close Browser


Remove item in cart Test
    [Documentation]  these is for remove the product test
    [Tags]  user
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Test user login
    sleep  1s
    Test email
    Test password
    Click Button  Xpath:/html/body/section/div/div/div[2]/div[3]/div/form/div/button
    sleep  1s

    Click Element  Xpath://html/body/nav/div/div/ul/li/a
    sleep  1s
    Click Link  Xpath:/html/body/nav/div/div/ul/li/ul/li[9]/a
    sleep  2s
    Click Link   Xpath://html/body/div[19]/div/div[2]/center/div/div[2]/center/a
    sleep  1s
    Click Link  Xpath://html/body/div/div/div/aside[2]/article/a
    sleep  3s
    Click Element  Xpath://html/body/div/div/div/form/table/tbody/tr/td[4]/a[2]
    sleep  3s
    Click Element  xpath://html/body/div/nav/div/div/div/div/a/img
    Click Element  xpath://html/body/div/nav/div/div/div/div/ul/li[3]/a
    sleep  1s
    Close Browser



Test User details update and Logout
     [Documentation]  these is for update the userdetails and logout
     [Tags]  user
     Open Browser  ${web_url}  chrome
     Maximize Browser Window
     sleep  1s
     Test email
     Test password
     Click Button  Xpath:/html/body/section/div/div/div[2]/div[3]/div/form/div/button
     sleep   1s
     Click Element  Xpath:/html/body/nav/div/div/div/div/a/img
     Click Element  Xpath:/html/body/nav/div/div/div/div/ul/li[1]/a
     sleep  1s
     Input Text  name:name  Sameer
     Test user age
     Test user gender
     Test select
     Test user address
     Test email
     Execute Javascript  window.scrollTo(0,500)
     Test phone
     Test password
     Click Button   name:reg
     sleep  1s
     Click Element  Xpath:/html/body/nav/div/div/div/div/a/img
     Click Element  Xpath:/html/body/nav/div/div/div/div/ul/li[3]/a
     sleep  1s


Relogin to check update test:
    [Documentation]  these is for update check test
    [Tags]  user

    Test email
    Test password
    Click Button  Xpath:/html/body/section/div/div/div[2]/div[3]/div/form/div/button
    sleep   1s
    Click Element  Xpath:/html/body/nav/div/div/div/div/a/img
    sleep   3s
    Click Element  Xpath:/html/body/nav/div/div/div/div/ul/li[3]/a
    sleep  1s
    Close Browser




*** Keywords ***
Test name
    Input Text  name:name  Dhanush
Test user age
    Input Text  name:age  20
Test user gender
    Click Element  Xpath:/html/body/section/div/div/div/div/div/div[2]/div/form/table/tbody/tr[3]/td[2]/div/select
Test select
    Click Element  Xpath:/html/body/section/div/div/div/div/div/div[2]/div/form/table/tbody/tr[3]/td[2]/div/select/option[2]
Test user address
    Input Text  name:add  Hosur
Test email
    Input Text  name:email  3dhanushkccd@gmail.com
Test phone
    Input Text  name:pno  9361428388
Test password
    Input Text  name:pass  12345

Test user login
    Click Element  Xpath:/html/body/nav/div/div/ul/li[3]/a
Test seller Account
    Input Text  name:ano  08690100045
Test IFSC
    Input Text  name:ifsc  iob435
Test Product name
    Input Text  name:name  OnePlus mobile
Test Product price
    Input Text  name:price  14999
Test Product Features
    Input Text  name:fea  Full HD Display and Gorilla glass 6 production
Test Delete Product
    Input Text  name:name  OnePlus mobile
Test Search Product
    Input Text  name:sea  OnePlus Nord CE 5G