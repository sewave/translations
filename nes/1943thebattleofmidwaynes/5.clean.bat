@echo off
set SCRIPTNAME="1943thebattleofmidwaynes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
