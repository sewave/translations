@echo off
set T_FILENAME="TR_X Dazedly Ray (J) [!].bin"
set SCRIPTNAME="xdazedlyraysmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 40B60:500,41B60:500
pause
