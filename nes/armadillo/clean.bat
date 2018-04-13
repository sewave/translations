@echo off 
set SCRIPTNAME="armadillo"
java -jar Hextractor.jar -ca %SCRIPTNAME%_tr.ext %SCRIPTNAME%_tr_clean.txt 
pause  
