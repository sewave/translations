@echo off 
set SCRIPTNAME="mk3gg"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext 
pause  
