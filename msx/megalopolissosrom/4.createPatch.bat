@echo off
set T_FILENAME="TR_Megalopolis SOS (1983)(General).rom"
set S_FILENAME="Megalopolis SOS (1983)(General).rom"
set SCRIPTNAME="megalopolissosrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
