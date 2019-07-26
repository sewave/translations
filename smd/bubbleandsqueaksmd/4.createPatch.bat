@echo off
set T_FILENAME="TR_Bubble and Squeak (U) [!].bin"
set S_FILENAME="Bubble and Squeak (U) [!].bin"
set SCRIPTNAME="bubbleandsqueaksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
