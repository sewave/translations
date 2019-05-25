@echo off
set T_FILENAME="TR_Bump'n'Jump (U) [!].nes"
set S_FILENAME="Bump'n'Jump (U) [!].nes"
set SCRIPTNAME="bumpnjumpnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
