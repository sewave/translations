@echo off
set T_FILENAME="TR_Arkista's Ring (USA).nes"
set S_FILENAME="Arkista's Ring (USA).nes"
set SCRIPTNAME="arkistasringnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
