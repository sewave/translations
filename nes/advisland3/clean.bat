@echo off 
set SCRIPTNAME="advisland3"
java -jar Hextractor.jar -ca %SCRIPTNAME\%_es.txt \%SCRIPTNAME\%_es_clean.txt 
pause  
