@echo off 
set SCRIPTNAME="tokines"
java -jar Hextractor.jar -ca %SCRIPTNAME\%_es.txt \%SCRIPTNAME\%_es_clean.txt 
pause  
