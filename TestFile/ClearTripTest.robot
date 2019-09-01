** Setting ***
Library    Selenium2Library 
Resource    ../Resource/FlightBookingTest.robot
Resource    ../Resource/HotelBookingTest.robot
Resource    ../Resource/SignInTest.robot
Resource    ../Resource/GenericFile.robot

Suite Setup    Begin Test
Suite Teardown    End Test  

*** Test Cases ***
SignIn Test
    [Documentation]    SignIn error validation    
    SignInError Verfication    
    
Flight Booking Test
    [Documentation]    Oneway Flight Journey Booking Validation
    OneWayJourney
    End Test

Hotel Booking Test
    [Documentation]    Hotel Booking Validation
    Begin Test    
    BookHotel

        
