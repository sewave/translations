@echo off
set T_FILENAME="TR_Alleyway (W) [!].gb"
set S_FILENAME="Alleyway (W) [!].gb"
set SCRIPTNAME="alleywaygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
