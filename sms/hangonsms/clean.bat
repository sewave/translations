@echo off 
set SCRIPTNAME="hangonsms"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.txt %SCRIPTNAME%_tr_clean.txt 
pause  
