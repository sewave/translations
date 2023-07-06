@echo off
set T_FILENAME="TR_Supercooked! (J) (v1.2).sfc"
set S_FILENAME="Supercooked! (J) (v1.2).sfc"
set SCRIPTNAME="supercookedsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
