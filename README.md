# ClearTrip Testing using Robot Framework

#Pre-requisite
   
    1.Python should be installed(Python scripts path should be added in environment variables).
        Example:(C:Programs\Python\Python37-32\Scripts\)
    2.Eclipse IDE is required.
    3.Install Robot Framework and Selenium2Library using below commands in command prompt.
            pip install robotframework
            pip install robotframework-selenium2library
    4.In Eclipse IDE navigate to Help->Eclipse Marketplace->Search for Red-Robot editor and install.
    5.Place BrowserDriver (.exe) file under python scripts path.   
    
#Project setup for Execution

    1.Eclipse IDE perspective should be changed to Robot.
    2.Retrieve the files from github.
	3.Import project from Github files.(File->Import->General->Existing Projects into Workspace) 
    4.Double click on red.xml file 
			a. Navigate to General tab->check whether Robot framework setup is configured.
			b. Navigate to libraries tab->Under referenced libraries-> Add Selenium2library (__init__.py file) which is available under Python\Python37-32\Lib\site-packages\Selenium2Library path.
    5.Run the project as robot test.

#Resource Files
    
    FlightBookingTest.robot
    GenericFile.robot
    HotelBookingTest.robot
    SignInTest.robot
    
#Main Test File

	ClearTripTest.robot
    
