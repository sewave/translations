@echo off
set SCRIPTNAME="indianajonesandthelastcrusadenes"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%.ext tr_%SCRIPTNAME%_clean.ext
pause
