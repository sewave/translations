@echo off
set T_FILENAME="TR_Logical (USA).gbc"
set SCRIPTNAME="logicalgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
