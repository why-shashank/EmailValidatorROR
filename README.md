# README

<b>This tool validates that provided email Id/Ids is/are valid or not.</b>

<b>Note</b> : I am using Truemail gem for the main functionality of email Id validation. I have set Validation type to smtp in Truemail configuration, that means first it will do Regex Validation (Validating it against) then mx validation (searching for email server for the domain in the given email Id) and then finally smtp validation (checks the real existence of email account on a current email server). So, the results should mostly be accurate.

<b>I have deployed it on Heroku . You can use it on the below link.</b>
https://emailvalidatorror.herokuapp.com/

<b>Part 1 of this Readme file has Steps to use the Tool on this link directly or after installation to the local machine.
Part 2(bottom part) has the information about the installation to the local machine.
Note :</b> I have given Create New Admin option also for now, may take it out later.


