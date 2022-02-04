@echo off
set T_FILENAME="TR_Brainies, The (USA).sfc"
set S_FILENAME="Brainies, The (USA).sfc"
set SCRIPTNAME="brainiesthesfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
