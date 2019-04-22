@echo off
set T_FILENAME="TR_Alpha Mission (U) [!].nes"
set S_FILENAME="Alpha Mission (U) [!].nes"
set SCRIPTNAME="alphamissionnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
