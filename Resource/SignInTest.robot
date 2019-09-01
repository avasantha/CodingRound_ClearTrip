** Setting ***
Library    Selenium2Library 

*** Variable ***
${UserAccount}    userAccountLink
${SignInBtn}    SignIn
${SignInFrame}    modal_window
${SignInPgBtn}    signInButton
${SignInError}    errors1
${ExpectedErrorMsg}    There were errors in your submission\nYour username is a required field\nYour account password is a required field
${CloseFrame}    //*[@id="close"]

*** Keyword ***
SignInError Verfication
    Click Link    ${UserAccount}
    Sleep    3
    Capture Page Screenshot 
    Click Button    ${SignInBtn}       
    Select Frame    ${SignInFrame}
    Click Button    ${SignInPgBtn}
    ${ActualErrorMsg}    Get Text    ${SignInError}
    Should Be Equal As Strings    ${ActualErrorMsg}    ${ExpectedErrorMsg}
    Capture Page Screenshot    
    Unselect Frame
    Click Element    ${CloseFrame}                      
    
