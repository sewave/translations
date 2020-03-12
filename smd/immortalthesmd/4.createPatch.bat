@echo off
set T_FILENAME="TR_Immortal, The (UE) [!].gen"
set S_FILENAME="Immortal, The (UE) [!].gen"
set SCRIPTNAME="immortalthesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
