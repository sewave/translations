@echo off
set T_FILENAME="TR_Explosive Brick '94 (Sachen) [!].gb"
set S_FILENAME="Explosive Brick '94 (Sachen) [!].gb"
set SCRIPTNAME="explosivebrick94gb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
