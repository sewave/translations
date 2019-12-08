@echo off
set T_FILENAME="TR_Super Runner (1987) (Pony Cannon) (J).rom"
set S_FILENAME="Super Runner (1987) (Pony Cannon) (J).rom"
set SCRIPTNAME="superrunnerrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
