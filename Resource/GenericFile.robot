** Setting ***
Library    Selenium2Library 

*** Variable ***
${Logo}    css=span[class="cleartripLogo"] 
    
*** Keyword ***
Begin Test
    Open Browser    https://www.cleartrip.com    chrome
    page should contain element  ${Logo}
    Maximize Browser Window

End Test
    Close Browser