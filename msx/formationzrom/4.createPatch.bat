@echo off
set T_FILENAME="TR_Formation Z (1985) (Jaleco) (J).rom"
set S_FILENAME="Formation Z (1985) (Jaleco) (J).rom"
set SCRIPTNAME="formationzrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
