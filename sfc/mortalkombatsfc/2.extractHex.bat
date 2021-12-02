@echo off
set T_FILENAME="TR_Mortal Kombat (USA).sfc"
set SCRIPTNAME="mortalkombatsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
