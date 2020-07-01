@echo off
set T_FILENAME="TR_Special Criminal Investigation (E) [!].sms"
set SCRIPTNAME="specialcriminalinvestigationsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
