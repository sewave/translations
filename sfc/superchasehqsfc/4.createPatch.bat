@echo off
set T_FILENAME="TR_Super Chase H.Q. (USA).sfc"
set S_FILENAME="Super Chase H.Q. (USA).sfc"
set SCRIPTNAME="superchasehqsfc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
