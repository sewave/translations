@echo off
set T_FILENAME="TR_orphea.nes"
set SCRIPTNAME="orpheanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B60:40
pause
