@echo off
set T_FILENAME="TR_Animaniacs (USA).md"
set SCRIPTNAME="animaniacssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 42300:200
pause
