@echo off 
set SCRIPTNAME="ffight3nes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext 
pause  
