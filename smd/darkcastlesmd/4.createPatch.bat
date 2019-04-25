@echo off
set T_FILENAME="TR_Dark Castle (UE) [!].bin"
set S_FILENAME="Dark Castle (UE) [!].bin"
set SCRIPTNAME="darkcastlesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
