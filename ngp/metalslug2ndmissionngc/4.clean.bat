@echo off
set SCRIPTNAME="metalslug2ndmissionngc"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
