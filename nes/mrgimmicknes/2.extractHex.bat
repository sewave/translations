@echo off
set T_FILENAME="TR_Mr. Gimmick (E) [!].nes"
set SCRIPTNAME="mrgimmicknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 43CB0:60,501B0:60
pause
