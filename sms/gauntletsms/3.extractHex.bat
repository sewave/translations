@echo off
set T_FILENAME="TR_Gauntlet (UE) [!].sms"
set SCRIPTNAME="gauntletsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12BA4:40,17D20:180,11444:500,12EE4:20
pause
