@echo off
set T_FILENAME="TR_Phelios (USA).md"
set SCRIPTNAME="pheliossmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25354:20,215F4:C0,21A34:40
pause
