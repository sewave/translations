@echo off
set T_FILENAME="TR_Pop Breaker (Japan).gg"
set S_FILENAME="Pop Breaker (Japan).gg"
set SCRIPTNAME="popbreakergg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
