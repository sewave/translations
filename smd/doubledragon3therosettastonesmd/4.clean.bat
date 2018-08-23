@echo off
set SCRIPTNAME="doubledragon3therosettastonesmd"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
