@echo off
set T_FILENAME="TR_World Trophy Soccer (USA).md"
set SCRIPTNAME="worldtrophysoccersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
