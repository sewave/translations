@echo off 
set SCRIPTNAME="beabutsmd"
java -jar Hextractor.jar -ca tr_%SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt_tr_clean.txt 
pause  
