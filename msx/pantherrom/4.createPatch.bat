@echo off
set T_FILENAME="TR_Panther (1986) (Irem) (J).rom"
set S_FILENAME="Panther (1986) (Irem) (J).rom"
set SCRIPTNAME="pantherrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
