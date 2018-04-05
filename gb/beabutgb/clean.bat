@echo off 
set SCRIPTNAME="beabutgb"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.ext %SCRIPTNAME%_tr_clean.txt 
pause  
