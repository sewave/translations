@echo off 
set SCRIPTNAME="rangerx"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.txt %SCRIPTNAME%_tr_clean.txt 
pause  
