@echo off
set T_FILENAME="TR_Rise of the Robots (E) [!].bin"
set S_FILENAME="Rise of the Robots (E) [!].bin"
set SCRIPTNAME="riseoftherobotssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
