@echo off
set SCRIPTNAME="sunmannes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt.ext tr_%SCRIPTNAME%Alt_clean.ext
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt2.ext tr_%SCRIPTNAME%Alt2_clean.ext
pause
