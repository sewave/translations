@echo off
set T_FILENAME="TR_Hyper Rally (1985) (Konami) (J).rom"
set S_FILENAME="Hyper Rally (1985) (Konami) (J).rom"
set SCRIPTNAME="hyperrallyrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
