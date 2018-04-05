@echo off
set SCRIPTNAME="ghostsngoblinsgbc"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.txt
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt.ext tr_%SCRIPTNAME%Alt_clean.txt
pause
