@echo off
set T_FILENAME="TR_Tale Spin (U) [!].gg"
set SCRIPTNAME="talespingg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1A483:100,
pause
