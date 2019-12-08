@echo off
set T_FILENAME="TR_Ninja Gaiden (Prototype) [!].sms"
set SCRIPTNAME="ninjagaidenprotosms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
