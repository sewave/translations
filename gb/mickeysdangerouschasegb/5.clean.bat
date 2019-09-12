@echo off
set SCRIPTNAME="mickeysdangerouschasegb"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
