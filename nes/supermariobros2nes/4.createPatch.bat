@echo off
set T_FILENAME="TR_Super Mario Bros. 2 (J) [hM04].nes"
set S_FILENAME="Super Mario Bros. 2 (J) [hM04].nes"
set SCRIPTNAME="supermariobros2nes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
