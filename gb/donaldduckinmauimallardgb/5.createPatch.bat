@echo off
set T_FILENAME="TR_Donald Duck in Maui Mallard (U) [!].gb"
set S_FILENAME="Donald Duck in Maui Mallard (U) [!].gb"
set SCRIPTNAME="donaldduckinmauimallardgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
