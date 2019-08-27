@echo off
set T_FILENAME="TR_Donald in Maui Mallard (E) [!].bin"
set S_FILENAME="Donald in Maui Mallard (E) [!].bin"
set SCRIPTNAME="mauimallardsmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
