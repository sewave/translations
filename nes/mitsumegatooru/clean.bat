@echo off 
set SCRIPTNAME="mitsumegatooru"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.txt %SCRIPTNAME%_tr_clean.txt 
pause  
