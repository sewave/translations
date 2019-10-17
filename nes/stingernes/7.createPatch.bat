@echo off
set T_FILENAME="TR_Stinger (U) [!].nes"
set S_FILENAME="Stinger (U) [!].nes"
set SCRIPTNAME="stingernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
