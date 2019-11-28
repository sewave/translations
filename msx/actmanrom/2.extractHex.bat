@echo off
set T_FILENAME="TR_Actman (1984) (Mass Tael) (J).rom"
set SCRIPTNAME="actmanrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
