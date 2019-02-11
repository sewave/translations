@echo off
set T_FILENAME="TR_Tale Spin (UE) [!].bin"
set SCRIPTNAME="talespinsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5FFE0:C00
pause
