@echo off 
set SCRIPTNAME="twinkle"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.txt %SCRIPTNAME%_tr_clean.txt 
pause  
