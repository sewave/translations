@echo off 
set SCRIPTNAME="dondokodon2"
java -jar Hextractor.jar -ca %SCRIPTNAME\%_es.txt \%SCRIPTNAME\%_es_clean.txt 
pause  
