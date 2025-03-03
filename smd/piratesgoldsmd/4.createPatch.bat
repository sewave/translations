@echo off
set T_FILENAME="TR_Pirates! Gold (USA).md"
set S_FILENAME="Pirates! Gold (USA).md"
set SCRIPTNAME="piratesgoldsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
