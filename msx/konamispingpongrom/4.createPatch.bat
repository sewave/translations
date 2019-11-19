@echo off
set T_FILENAME="TR_konami's ping pong (1985) (konami) (j).rom"
set S_FILENAME="konami's ping pong (1985) (konami) (j).rom"
set SCRIPTNAME="konamispingpongrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
