@echo off
set T_FILENAME="TR_Druaga no Tou (Japan).rom"
set SCRIPTNAME="druaganotourom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
