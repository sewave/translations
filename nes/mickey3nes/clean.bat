@echo off 
set SCRIPTNAME="mickey3nes"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.txt %SCRIPTNAME%_tr_clean.txt 
pause  
