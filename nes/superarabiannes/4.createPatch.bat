@echo off
set T_FILENAME="TR_Super Arabian (J).nes"
set S_FILENAME="Super Arabian (J).nes"
set SCRIPTNAME="superarabiannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
