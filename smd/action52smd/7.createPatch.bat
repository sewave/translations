@echo off
set T_FILENAME="TR_Action 52 (Unl) [b3].bin"
set S_FILENAME="Action 52 (Unl) [b3].bin"
set SCRIPTNAME="action52smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
