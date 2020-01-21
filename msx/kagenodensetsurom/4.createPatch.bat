@echo off
set T_FILENAME="TR_Kageno Densetsu (1986) (Taito) (J).rom"
set S_FILENAME="Kageno Densetsu (1986) (Taito) (J).rom"
set SCRIPTNAME="kagenodensetsurom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
