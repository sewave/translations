@echo off
set T_FILENAME="TR_Dragon Dance (USA) (SGB Enhanced).gbc"
set SCRIPTNAME="dragondancegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
