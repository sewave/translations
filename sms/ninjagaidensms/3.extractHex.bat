@echo off
set T_FILENAME="TR_Ninja Gaiden (E) [!].sms"
set SCRIPTNAME="ninjagaidensms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
