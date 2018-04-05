@echo off
set SCRIPTNAME="circusmysmd"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt.ext tr_%SCRIPTNAME%_cleanAlt.ext
pause
