@echo off
set SCRIPTNAME="rastansaga2pce"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
