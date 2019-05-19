@echo off
set SCRIPTNAME="joemac2lostinthetropicssfc"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
