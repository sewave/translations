@echo off
set T_FILENAME="TR_F-15 Strike Eagle (USA, Europe).gb"
set S_FILENAME="F-15 Strike Eagle (USA, Europe).gb"
set SCRIPTNAME="f15strikeeaglegb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
