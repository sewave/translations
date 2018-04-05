@echo off
set T_FILENAME="TR_Twin Cobra (U) [!].bin"
set S_FILENAME="Twin Cobra (U) [!].bin"
set SCRIPTNAME="twincobra"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
