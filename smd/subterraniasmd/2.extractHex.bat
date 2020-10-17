@echo off
set T_FILENAME="TR_Sub-Terrania (USA).md"
set SCRIPTNAME="subterraniasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D135A:2000,1D335A:2000,1D535A:160,1D085A:1100
pause
