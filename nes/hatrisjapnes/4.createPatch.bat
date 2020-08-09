@echo off
set T_FILENAME="TR_Hatris (Japan).nes"
set S_FILENAME="Hatris (Japan).nes"
set SCRIPTNAME="hatrisjapnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
