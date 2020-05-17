@echo off
set SCRIPTNAME="crackoutnes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
