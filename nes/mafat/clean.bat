@echo off 
set SCRIPTNAME="mafat"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.ext %SCRIPTNAME%_tr_clean.txt 
pause  
