@echo off
set SCRIPTNAME="soldiersoffortunesmd"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
