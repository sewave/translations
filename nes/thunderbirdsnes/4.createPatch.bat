@echo off
set T_FILENAME="TR_Thunderbirds (USA).nes"
set S_FILENAME="Thunderbirds (USA).nes"
set SCRIPTNAME="thunderbirdsnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
