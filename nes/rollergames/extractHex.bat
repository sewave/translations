@echo off 
set T_FILENAME="TR_Rollergames (U) [!].nes"
set SCRIPTNAME="rollergames"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2F010:200
pause 
