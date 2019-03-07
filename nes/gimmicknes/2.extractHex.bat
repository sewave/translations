@echo off
set T_FILENAME="TR_Gimmick! (J).nes"
set SCRIPTNAME="gimmicknes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 43CB0:60,501B0:60
pause
