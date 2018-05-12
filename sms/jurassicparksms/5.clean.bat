@echo off
set SCRIPTNAME="jurassicparksms"
java -jar Hextractor.jar -ca %SCRIPTNAME%Alt.ext tr_%SCRIPTNAME%_clean.ext
pause
