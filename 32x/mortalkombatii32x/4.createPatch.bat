@echo off
set T_FILENAME="TR_Mortal Kombat II (32X) (W) (Jan 1995) [!].32x"
set S_FILENAME="Mortal Kombat II (32X) (W) (Jan 1995) [!].32x"
set SCRIPTNAME="mortalkombatii32x"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
