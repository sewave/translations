@echo off
set T_FILENAME="TR_Yie Ar Kung-Fu (Taiwan) (Unl).sg"
set S_FILENAME="Yie Ar Kung-Fu (Taiwan) (Unl).sg"
set SCRIPTNAME="yiearkungfusg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
