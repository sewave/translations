@echo off
set T_FILENAME="TR_Super Loopz (Japan).sfc"
set S_FILENAME="Super Loopz (Japan).sfc"
set SCRIPTNAME="superloopzsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
