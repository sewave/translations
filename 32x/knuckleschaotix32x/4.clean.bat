@echo off
set SCRIPTNAME="knuckleschaotix32x"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
