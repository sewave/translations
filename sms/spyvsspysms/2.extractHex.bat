@echo off
set T_FILENAME="TR_Spy vs. Spy (UE) [!].sms"
set SCRIPTNAME="spyvsspysms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
