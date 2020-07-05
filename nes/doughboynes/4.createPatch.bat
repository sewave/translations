@echo off
set T_FILENAME="TR_Dough Boy (Japan).nes"
set S_FILENAME="Dough Boy (Japan).nes"
set SCRIPTNAME="doughboynes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
