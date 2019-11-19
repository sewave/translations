@echo off
set T_FILENAME="TR_Scion (1985) (Sony) (J).rom"
set S_FILENAME="Scion (1985) (Sony) (J).rom"
set SCRIPTNAME="scionrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
