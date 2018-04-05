@echo off 
set T_FILENAME="TR_Golden Axe (UE) [!].sms"
set SCRIPTNAME="gaxesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
