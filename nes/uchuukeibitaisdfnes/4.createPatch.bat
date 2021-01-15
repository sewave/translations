@echo off
set T_FILENAME="TR_Uchuu Keibitai SDF (Japan).nes"
set S_FILENAME="Uchuu Keibitai SDF (Japan).nes"
set SCRIPTNAME="uchuukeibitaisdfnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
