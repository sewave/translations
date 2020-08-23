@echo off
set T_FILENAME="TR_Tom and Jerry (USA).sfc"
set S_FILENAME="Tom and Jerry (USA).sfc"
set SCRIPTNAME="tomandjerrysfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
