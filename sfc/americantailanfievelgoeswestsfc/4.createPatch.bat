@echo off
set T_FILENAME="TR_American Tail, An - Fievel Goes West (USA).sfc"
set S_FILENAME="American Tail, An - Fievel Goes West (USA).sfc"
set SCRIPTNAME="americantailanfievelgoeswestsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
