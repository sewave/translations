@echo off 
set SCRIPTNAME="zenin"
java -jar Hextractor.jar -ca %SCRIPTNAME\%_es.txt \%SCRIPTNAME\%_es_clean.txt 
pause  
