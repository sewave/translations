@echo off
set T_FILENAME="TR_True Lies (USA).sfc"
set S_FILENAME="True Lies (USA).sfc"
set SCRIPTNAME="trueliessfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
