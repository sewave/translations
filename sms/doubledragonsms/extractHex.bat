@echo off 
set T_FILENAME="TR_Double Dragon (UE) [!].sms"
set SCRIPTNAME="doubledragonsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
