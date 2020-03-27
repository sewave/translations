@echo off
set T_FILENAME="TR_Super Cobra (1983) (Konami) (J).rom"
set S_FILENAME="Super Cobra (1983) (Konami) (J).rom"
set SCRIPTNAME="supercobrarom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
