** Setting ***
Library    Selenium2Library 
   
*** Variable ***
${LnkHotel}    //*[@id="Home"]/div/aside[1]/nav/ul[1]/li[2]/a[1]
${Where}    Tags
${Location}    Indiranagar
${CheckInDate}    CheckInDate
${CheckIn}    //*[@id="ui-datepicker-div"]/div[1]/table/tbody/tr[5]/td[3]/a
${CheckOutDate}    CheckOutDate
${CheckOut}    //*[@id="ui-datepicker-div"]/div[1]/table/tbody/tr[5]/td[5]/a
${Travellers}    travellersOnhome
${SearchHotelBtn}    SearchHotelsButton
${HotelList}    //*[@class='hotelsList']

*** Keyword ***
BookHotel
    Click Link    ${LnkHotel}
    Input Text    ${Where}    ${Location}    
    Sleep    5
    Press Key    ${Where}    \\25
    Press Key    ${Where}    \\13
    Click Element    ${CheckInDate}
    Click Element    ${CheckIn}
    Click Element    ${CheckOutDate}
    Click Element    ${CheckOut}
    Select From List By Value    ${Travellers}    4
    Capture Page Screenshot
    Click Button    ${SearchHotelBtn}
    Page Should Contain Element    ${HotelList}
    Sleep    10
    Capture Page Screenshot
        
