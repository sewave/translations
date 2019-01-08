@echo off
set T_FILENAME="TR_Snow Brothers (U) [!].nes"
set S_FILENAME="Snow Brothers (U) [!].nes"
set SCRIPTNAME="snowbrothersnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
