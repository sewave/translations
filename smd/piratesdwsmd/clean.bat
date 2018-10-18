@echo off 
set SCRIPTNAME="piratesdwsmd"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.ext %SCRIPTNAME%_tr_clean.ext 
pause  
