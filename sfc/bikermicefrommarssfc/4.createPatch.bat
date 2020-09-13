@echo off
set T_FILENAME="TR_Biker Mice from Mars (USA).sfc"
set S_FILENAME="Biker Mice from Mars (USA).sfc"
set SCRIPTNAME="bikermicefrommarssfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
