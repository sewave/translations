@echo off
set SCRIPTNAME="sonicthehedgehog2sms"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
