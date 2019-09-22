@echo off
set T_FILENAME="TR_B-Wings (J) [!].nes"
set S_FILENAME="B-Wings (J) [!].nes"
set SCRIPTNAME="bwingsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
