@echo off
set SCRIPTNAME="mortalkombat3gb"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
