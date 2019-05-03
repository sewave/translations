@echo off
set SCRIPTNAME="yiearkungfu1rom"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
