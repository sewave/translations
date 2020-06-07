@echo off
set T_FILENAME="TR_Pesterminator - The Western Exterminator (Color Dreams) [!].nes"
set SCRIPTNAME="pesterminatorthewesternexterminatornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 10C10:50,11210:A0
pause
