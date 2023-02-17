@echo off
set T_FILENAME="TR_Evolution (1983) (Sydney).col"
set S_FILENAME="Evolution (1983) (Sydney).col"
set SCRIPTNAME="evolutioncol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
