@echo off
set T_FILENAME="TR_Dragon Fighter (U) [!].nes"
set SCRIPTNAME="dragonfighternes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 30DB0:10,2F010:200,3F010:100
pause
