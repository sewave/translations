@echo off
set T_FILENAME="TR_Ninja Gaiden (Europe, Brazil) (Beta).sms"
set SCRIPTNAME="ninjagaidenprotosms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
