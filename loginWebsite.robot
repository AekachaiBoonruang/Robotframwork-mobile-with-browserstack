*** Settings ***
Resource  ./Resource/setupWeb.robot
Suite Teardown    Close Browser
Force Tags        BrowserStack
*** Test Cases ***
Login Should Failed With Unregistered Mail Adress
    Open LinkedinPage  BROWSER=Chrome  BROWSER_VERSION=95.0  OS=Windows  OS_VERSION=10
    Go to Sign In Page
    Enter User Name
    Enter Wrong Password
    Click Login
    sleep    ${Delay}
    Assert Warning Message
    [Teardown]    Close Browser