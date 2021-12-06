# README

<b>This tool validates that provided email Id/Ids is/are valid or not.</b>

<b>Note</b> : I am using Truemail gem for the main functionality of email Id validation. I have set Validation type to smtp, for most accuracy ,in Truemail configuration, that means first it will do Regex Validation (Validating it against) then mx validation (searching for email server for the domain in the given email Id) and then finally smtp validation (checks the real existence of email account on a current email server).

<b>I have deployed it on Heroku . You can use it on the below link.</b><br>
https://emailvalidatorror.herokuapp.com/
<br>
<b>Part 1 of this Readme file has Steps to use the Tool on this link directly or after installation to the local machine.<br>
Part 2(bottom part) has the information about the installation to the local machine.
Note :</b> I have given Create New Admin option also for now, may take it out later.

<b><center>Part 1</center></b>
Steps to use the tool:
•	This is the index page which you will see on the given link.
![‘screenshot of index page’](readmeimages/index.PNG)
•	Click on Create New User button if you want to use it as a user. Below Screen will appear.
![‘screenshot of user sign up page’](readmeimages/createnewuser.PNG)
•	Provide a username and a password and click on create user to create your account. You have to choose a unique username. If you use a username which is already taken, you will see the below screen which say “Username already exists. Please chose a different one”.
![‘screenshot of user already exists page’](readmeimages/userexists.PNG)
•	If everything goes fine, then you account will be created, and you will be redirected to the index page again displaying a message to log in and use the app.
!['screenshot of user successfully created'](readmeimages/usercreated.PNG)
•	Similarly, admin can also be created using Create new Admin button.
•	Now you need to click on Login button to below the test USER. You will get the below screen.
![‘screenshot of user login page](readmeimages/userlogin.PNG)
•	Provide correct username and password and click on User Log In.   In case of wrong credentials, we won’t be able to login and get the below page.
![‘screenshot of user wrong credentials’](readmeimages/credwrong.PNG)
•	If everything goes right, then we will be logged in to the tool. This will show you username at   the top.
![‘screenshot of user tool’](readmeimages/usertool.PNG)
•	In the email box, we will enter any email id and click on Validate. Then at the bottom of the block, it will show us that email Id is valid or not.
![‘screenshot of user tool result’](readmeimages/usertoolres.PNG)
•	Click on Logout button to end the session as the current user.
•	Same way we can enter the tool as admin also.
But Admin has one more feature of bulk Validation along with this feature of single Validation.
![‘screenshot of admin tool’](readmeimages/admintool.PNG)
•	For bulk Validation, click on Choose File button and select a CSV file containing multiple Email IDs separated by comma only and click on Validate using File. You will get list of valid and invalid IDs at the bottom of the block as shown. For example, I used a file having 4 email IDs , two of them are valid and two are invalid as shown in the below screenshot.
![‘screenshot of admin bulk validation’](readmeimages/bulkval.PNG)



