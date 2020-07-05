@echo off
set T_FILENAME="TR_Madoola no Tsubasa (Japan).nes"
set SCRIPTNAME="madoolanotsubasanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FE50:170,F3F0:20,F5D0:40
pause
