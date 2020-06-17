@echo off
set T_FILENAME="TR_Jelly Boy (Beta).bin"
set S_FILENAME="Jelly Boy (Beta).bin"
set SCRIPTNAME="jellyboysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
