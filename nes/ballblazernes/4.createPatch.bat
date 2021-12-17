@echo off
set T_FILENAME="TR_Ballblazer (Japan).nes"
set S_FILENAME="Ballblazer (Japan).nes"
set SCRIPTNAME="ballblazernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
