@echo off
set T_FILENAME="TR_U.N. Squadron (USA).sfc"
set S_FILENAME="U.N. Squadron (USA).sfc"
set SCRIPTNAME="unsquadronsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
