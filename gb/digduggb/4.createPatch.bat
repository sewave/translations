@echo off
set T_FILENAME="TR_Dig Dug (U) [!].gb"
set S_FILENAME="Dig Dug (U) [!].gb"
set SCRIPTNAME="digduggb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
