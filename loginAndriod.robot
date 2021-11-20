*** Settings ***
Library           AppiumLibrary
 
*** Variables ***
${BSUser}   get from github secreat key
${AccessKey}   get from github secreat key
${RemoteUrl}   http://${BSUser}:${AccessKey}@hub.browserstack.com/wd/hub
${DeviceName}   Google Pixel 3

*** Test Cases ***
Open application via browserstack
    Open Application    ${RemoteURL}    platformName="Android"   deviceName=${DeviceName}   platformVersion=9.0  app=bs://c700ce60cf13ae8ed97705a55b8e022f13c5827c
    Close Application