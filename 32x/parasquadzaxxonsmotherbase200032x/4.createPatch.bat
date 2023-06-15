@echo off
set T_FILENAME="TR_Parasquad ~ Zaxxon's Motherbase 2000 (Japan, USA).32x"
set S_FILENAME="Parasquad ~ Zaxxon's Motherbase 2000 (Japan, USA).32x"
set SCRIPTNAME="parasquadzaxxonsmotherbase200032x"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
