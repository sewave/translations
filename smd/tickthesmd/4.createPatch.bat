@echo off
set T_FILENAME="TR_Tick, The (U) [!].gen"
set S_FILENAME="Tick, The (U) [!].gen"
set SCRIPTNAME="tickthesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
