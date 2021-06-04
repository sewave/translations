@echo off
set T_FILENAME="TR_Druaga no Tou (Japan).nes"
set SCRIPTNAME="druaganotounes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
