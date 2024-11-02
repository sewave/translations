@echo off
set T_FILENAME="TR_Rollergames (USA).nes"
set SCRIPTNAME="rollergamesnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F010:200,37620:10,311D0:10,313C0:50,2F910:20
pause
