@echo off
set SCRIPTNAME="supermariobros3nes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt2.ext tr_%SCRIPTNAME%_clean.ext
pause
