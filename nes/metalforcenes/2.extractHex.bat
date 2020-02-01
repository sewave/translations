@echo off
set T_FILENAME="TR_Metal Force (Korea) (Unl).nes"
set SCRIPTNAME="metalforcenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 58AE0:30,58BE0:30,4E5D0:20,4D3F0:20,4D5D0:30,4E3F0:20,4E5D0:30,4DE70:20,4DF70:20
pause
