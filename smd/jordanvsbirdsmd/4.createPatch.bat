@echo off
set T_FILENAME="TR_Jordan vs Bird (USA, Europe) (v1.1).md"
set S_FILENAME="Jordan vs Bird (USA, Europe) (v1.1).md"
set SCRIPTNAME="jordanvsbirdsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
