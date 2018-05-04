@echo off
set SCRIPTNAME="bladesofvengeancesmd"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
