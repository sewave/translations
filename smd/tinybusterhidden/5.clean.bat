@echo off
set SCRIPTNAME="tinybusterhidden"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt.ext tr_%SCRIPTNAME%_clean.ext
pause
