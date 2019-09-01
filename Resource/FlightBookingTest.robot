*** Setting ***
Library    Selenium2Library       
    
*** Variable ***
${FlightLink}    //*[@id="Home"]/div/aside[1]/nav/ul[1]/li[1]/a[1]
${Trip}    trip_type
${TripType}    OneWay
${From}    //*[@id="FromTag"]
${Departure}    Bangalore
${To}    //*[@id="ToTag"]
${Arrival}    Delhi
${DatePicker}    //*[@id="ORtrip"]/section[2]/div[1]/dl/dd/div/a/i
${Date}    //*[@id="ui-datepicker-div"]/div[1]/table/tbody/tr[4]/td[3]/a
${NoOfAdults}    name=adults
${SearchFlightBtn}    //*[@id="SearchBtn"]
${FlightsList}    flightForm 
              
*** Keyword ***
OneWayJourney
    Click Link    ${FlightLink}
    Select Radio Button    ${Trip}    ${TripType}    
    Input Text    ${From}    ${Departure}
    Sleep    5  
    Press Key    ${From}    \\25
    Press Key    ${From}    \\13
    Input Text    ${To}    ${Arrival}    
    Sleep    5
    Press Key    ${To}    \\25
    Press Key    ${To}    \\13
    Click Element    ${DatePicker}    
    Click Element    ${Date}       
    Select From List By Value    ${NoOfAdults}    2
    Capture Page Screenshot       
    Click Button    ${SearchFlightBtn}
    Page Should Contain Element    ${FlightsList}
    Sleep    10
    Capture Page Screenshot    