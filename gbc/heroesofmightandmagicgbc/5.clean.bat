@echo off
set SCRIPTNAME="heroesofmightandmagicgbc"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
