@echo off
set T_FILENAME="TR_Star Force (U) [!].nes"
set S_FILENAME="Star Force (U) [!].nes"
set SCRIPTNAME="starforcenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
