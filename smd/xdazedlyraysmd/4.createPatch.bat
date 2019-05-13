@echo off
set T_FILENAME="TR_X Dazedly Ray (J) [!].bin"
set S_FILENAME="X Dazedly Ray (J) [!].bin"
set SCRIPTNAME="xdazedlyraysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
