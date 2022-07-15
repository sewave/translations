@echo off
set T_FILENAME="TR_Terminator 2 - Judgment Day (USA).nes"
set S_FILENAME="Terminator 2 - Judgment Day (USA).nes"
set SCRIPTNAME="terminator2judgmentdaynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
