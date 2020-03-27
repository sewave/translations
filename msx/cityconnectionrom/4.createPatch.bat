@echo off
set T_FILENAME="TR_City Connection (1986) (Jaleco) (J).rom"
set S_FILENAME="City Connection (1986) (Jaleco) (J).rom"
set SCRIPTNAME="cityconnectionrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
