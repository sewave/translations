@echo off
set T_FILENAME="TR_Tin Star (USA).sfc"
set S_FILENAME="Tin Star (USA).sfc"
set SCRIPTNAME="tinstarsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
