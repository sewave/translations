@echo off
set T_FILENAME="TR_Pooyan (1985) (Hudson) (J).rom"
set S_FILENAME="Pooyan (1985) (Hudson) (J).rom"
set SCRIPTNAME="pooyanrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
