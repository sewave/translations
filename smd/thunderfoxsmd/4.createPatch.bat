@echo off
set T_FILENAME="TR_Thunder Fox (U) [c][!].bin"
set S_FILENAME="Thunder Fox (U) [c][!].bin"
set SCRIPTNAME="thunderfoxsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
