@echo off
set T_FILENAME="TR_LOBO (Prototype) (SegaSaturno.com) [!].bin"
set S_FILENAME="LOBO (Prototype) (SegaSaturno.com) [!].bin"
set SCRIPTNAME="lobosmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
