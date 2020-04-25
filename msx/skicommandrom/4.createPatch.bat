@echo off
set T_FILENAME="TR_Ski Command (1984)(Casio).rom"
set S_FILENAME="Ski Command (1984)(Casio).rom"
set SCRIPTNAME="skicommandrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
