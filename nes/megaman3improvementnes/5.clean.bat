@echo off
set SCRIPTNAME="megaman3improvementnes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Dialog.ext tr_%SCRIPTNAME%Dialog_clean.ext
pause
