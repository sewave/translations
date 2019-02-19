@echo off
set T_FILENAME="TR_Bonkers Wax Up! (U) [!].gg"
set S_FILENAME="Bonkers Wax Up! (U) [!].gg"
set SCRIPTNAME="bonkerswaxupgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
