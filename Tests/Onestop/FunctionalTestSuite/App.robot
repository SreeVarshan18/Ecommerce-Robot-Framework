*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://onestopecommerce-env.eba-2uipu2xb.us-east-1.elasticbeanstalk.com/

*** Test Cases ***
User Registration Test
    [Documentation]  this is for user registration test
    [Tags]  User
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    sleep  1s
    Execute Javascript  window.scrollTo(0,400)
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
    Input Text  name:email  starvenkat18@gmail.com
    sleep  1s
    Test phone
    sleep  1s
    Test password
    sleep  1s
    Click Button  Xpath:/html/body/section/div/div/div/div/div/div[2]/div/form/center/button
    sleep  4s


Test User Login
    [Documentation]  this page for user login
    [Tags]  user
#    Open Browser  ${web_url}  chrome
#    Maximize Browser Window
#    sleep  1s
    Test email
    Test password
    Click Button  Xpath:/html/body/section/div/div/div[2]/div[3]/div/form/div/button
    sleep  2s
Buy Product Test
    [Documentation]  theis is for buying the product test
    [Tags]  user
    sleep  1s
    Click Element  xpath://html/body/nav/div/div/ul/li/a
    sleep  1s
    Click Element  xpath://html/body/nav/div/div/ul/li/ul/li[8]/a
    sleep  1s
    Click Element  xpath://html/body/div[17]/div/div[2]/center/div/div[2]/center/a
    sleep  1s
    Execute Javascript  window.scrollTo(0,300)
    sleep  1s

View Cart Test
    [Documentation]  this page for cart view
    [Tags]  user
    Click Element  xpath://html/body/div/div/div/aside[2]/article/a
    sleep  1s
    Click Element  xpath://html/body/div/nav/div/div/ul/li/a
    sleep  1s
Search the product Test
    [Documentation]  this is for search the product
    [Tags]  user
    Test Search Product
    Click Button  xpath://html/body/nav/div/div/div/form/button
    Execute Javascript  window.scrollTo(0,800)
    sleep  1s
    Click Element  xpath://html/body/div[3]/div/div/center/div/div[2]/center/a
    sleep  1s
    Execute Javascript  window.scrollTo(0,600)
    sleep  1s
    Click Element  xpath://html/body/div/div/div/aside[2]/article/a
Remove the product form cart test
    [Documentation]  this is for remove the product
    [Tags]  user
    sleep  1s
    Click Element  xpath:/html/body/div/div/div/form[1]/table/tbody/tr/td[4]/a[2]
    sleep  1s
Payment Test
    [Documentation]  this is for payment page
    [Tags]  user
    Click Button  xpath:/html/body/div/div/div/center[2]/a/button
    sleep  1s
    Input Text  name:cardnumber  2345676
    Input Text  name:cardexpiration  12/2028
    Input Text  name:cardcvc  432
    Click Button  xpath://html/body/div[2]/div[2]/div[2]/a/button
    Execute Javascript  window.scrollTo(0,300)
    sleep  2s
    Execute Javascript  window.scrollTo(0,-400)
    sleep  2s
    Click Element  xpath://html/body/div/nav/div/div/ul/li/a
    sleep  1s
View Order Status Test
    [Documentation]  this is for view order details
    [Tags]  user
    Click Element  xpath://html/body/nav/div/div/div/div/a/img
    sleep  1s
    Click Element  xpath://html/body/nav/div/div/div/div/ul/li[2]/a
    sleep  1s
    Execute Javascript  window.scrollTo(0,600)
    sleep  3s
    Execute Javascript  window.scrollTo(0,-600)
    sleep  2s

user Update Test
    [Documentation]  this is update
    [Tags]  user
    Click Element  xpath://html/body/nav/div/div/div/div/a/img
    sleep  1s
    Click Element  xpath://html/body/nav/div/div/div/div/ul/li[1]/a
    sleep  1s
    Input Text  name:name  Sree
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
    Click Button  name:reg
    sleep  1s
Logout Test
    [Documentation]  this for logout test
    [Tags]  user
    Click Element  xpath://html/body/nav/div/div/div/div/a/img
    Click Element  xpath://html/body/nav/div/div/div/div/ul/li[3]/a
    sleep  2s

Update Check Test
    [Documentation]  these is update check test
    [Tags]  user
    Test email
    Test password
    Click Button  Xpath:/html/body/section/div/div/div[2]/div[3]/div/form/div/button
    sleep  2s
    Click Element  xpath://html/body/nav/div/div/div/div/a/img
    sleep  2s
    Click Element  xpath://html/body/nav/div/div/div/div/ul/li[3]/a


Seller Registration Test
    [Documentation]  these is for seller registration
    [Tags]  seller
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


Seller login Test
    [Documentation]  these is for seller login
    [Tags]  seller
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

product added by seller Test
    [Documentation]  this is page to view product that added by seller
    [Tags]  seller
    Click Button  Xpath:/html/body/div/div/div[2]/form/center/button
    Execute Javascript  window.scrollTo(0,300)
    sleep  3s
    Execute Javascript  window.scrollTo(0,-300)


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
    sleep  2s
    Click Element  Xpath://html/body/nav/div/div/div/div/a/img
    Click Element  Xpath://html/body/nav/div/div/div/div/ul/li[3]/a
    sleep  1s




View order to Seller Test
    [Documentation]  these page for ordered product view to seller
    [Tags]  seller


    Input text  name:email  ramyagandhi16@gmail.com
    Input text  name:pass  R@mya12345
    Click Button  Xpath:/html/body/section/div/div/div/div/div[3]/div/div[2]/div/form/div[4]/button
    Click Element  Xpath://html/body/nav/div/div/ul/li[4]/a
    sleep  1s
    Execute Javascript  window.scrollTo(0,400)
    sleep  2s
    Execute Javascript  window.scrollTo(0,-400)
    sleep  1s
    Click Element  Xpath://html/body/nav/div/div/div/div/a/img
    Click Element  Xpath://html/body/nav/div/div/div/div/ul/li[3]/a
    sleep  1s

Seller Details update test
    [Documentation]  this is update the seller details
    [Tags]  seller
    Test email
    Test password
    sleep  1s
    Click Button  Xpath:/html/body/section/div/div/div/div/div[3]/div/div[2]/div/form/div[4]/button
    sleep  2s
    Click Element  Xpath://html/body/nav/div/div/div/div/a/img
    Click Element  Xpath://html/body/nav/div/div/div/div/ul/li[2]/a
    sleep  2s
    Input Text  name:name  Sree
    Test phone
    Test email
    Test password
    Test seller Account
    Test IFSC
    Execute Javascript  window.scrollTo(0,300)
    sleep  2s
    Click Button  xpath://html/body/section/div/div/div/div/div/div/form/div[7]/center/button
    sleep  2s
    Click Element  Xpath://html/body/nav/div/div/div/div/a/img
    Click Element  Xpath://html/body/nav/div/div/div/div/ul/li[3]/a
    sleep  1s

Check seller update Test
    [Documentation]  this is for check update details to seller details
    [Tags]  seller
    Test email
    Test password
    sleep  1s
    Click Button  Xpath:/html/body/section/div/div/div/div/div[3]/div/div[2]/div/form/div[4]/button
    sleep  2s
    Click Element  Xpath://html/body/nav/div/div/div/div/a/img
    sleep  3s
    Click Element  Xpath://html/body/nav/div/div/div/div/ul/li[3]/a
    sleep  1s

Admin login Test
    [Documentation]  this is for admin login
    [Tags]  admin
    Click Element  xpath://html/body/nav/div/div/ul/li[4]/a
    sleep  1s
    Input Text  name:name  admin
    Input Text  name:pass  12345
    Click Button  xpath:/html/body/section/div/div/div[2]/form/div[3]/center/button
    sleep  1s
Seller Details in admin Test
    [Documentation]  this is for admin login
    [Tags]  admin
    Click Button  xpath:/html/body/div[1]/div/div/h2/button
    sleep  2s
    Execute Javascript  window.scrollTo(0,600)
    sleep  3s
    Execute Javascript  window.scrollTo(0,-600)
    sleep  2s
User Details in Admin Test
    [Documentation]  this is for admin login
    [Tags]  admin
    Click Element  xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep  2s
    Click Button  xpath:/html/body/div[1]/div/div/h2/button
    sleep  2s
    Execute Javascript  window.scrollTo(0,600)
    sleep  3s
    Execute Javascript  window.scrollTo(0,-600)
    sleep  1s
    Click Element  xpath:/html/body/nav/div/div/ul/li[3]/a
    sleep  2s
About website Test
     [Documentation]  this is for about website
     [Tags]  Onestop
     Click Element  xpath:/html/body/nav/div/div/ul/li[5]/a
     sleep  1s
     Execute Javascript  window.scrollTo(0,900)
     sleep  3s
     Execute Javascript  window.scrollTo(0,-900)
     sleep  4s
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
    Input Text  name:email  dhanush1@gmail.com
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