@echo off
set T_FILENAME="TR_Battle Cross (1984) (Sony) (J).rom"
set S_FILENAME="Battle Cross (1984) (Sony) (J).rom"
set SCRIPTNAME="battlecrossrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
