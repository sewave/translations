@echo off 
set SCRIPTNAME="wanpakugo"
java -jar Hextractor.jar -ca %SCRIPTNAME\%_es.txt \%SCRIPTNAME\%_es_clean.txt 
pause  
