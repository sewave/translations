@echo off 
set SCRIPTNAME="tinytoons6"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.ext %SCRIPTNAME%_tr_clean.txt 
java -jar Hextractor.jar -ca %SCRIPTNAME%End_tr.ext %SCRIPTNAME%End_tr_clean.txt 
pause  
