@echo off 
set SCRIPTNAME="f1sensationj"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.txt %SCRIPTNAME%_tr_clean.txt 
pause  
