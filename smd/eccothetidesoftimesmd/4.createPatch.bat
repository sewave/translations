@echo off
set T_FILENAME="TR_Ecco - The Tides of Time (USA).md"
set S_FILENAME="Ecco - The Tides of Time (USA).md"
set SCRIPTNAME="eccothetidesoftimesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
