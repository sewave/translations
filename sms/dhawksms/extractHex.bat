@echo off 
set T_FILENAME="TR_Double Hawk (E) [!].sms"
set SCRIPTNAME="dhawksms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
