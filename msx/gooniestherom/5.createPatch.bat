@echo off
set T_FILENAME="TR_Goonies, The (1986) (Konami) (J).rom"
set S_FILENAME="Goonies, The (1986) (Konami) (J).rom"
set SCRIPTNAME="gooniestherom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
