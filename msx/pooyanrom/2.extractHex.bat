@echo off
set T_FILENAME="TR_Pooyan (1985) (Hudson) (J).rom"
set SCRIPTNAME="pooyanrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2EC3:20,2FD3:10
pause
