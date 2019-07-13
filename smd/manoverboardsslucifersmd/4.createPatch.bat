@echo off
set T_FILENAME="TR_Man Overboard! - S.S. Lucifer (E) [c][!].bin"
set S_FILENAME="Man Overboard! - S.S. Lucifer (E) [c][!].bin"
set SCRIPTNAME="manoverboardsslucifersmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
