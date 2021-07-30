@echo off
set T_FILENAME="TR_Uchuu Senkan Gomora (Japan).md"
set S_FILENAME="Uchuu Senkan Gomora (Japan).md"
set SCRIPTNAME="uchuusenkangomorasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
