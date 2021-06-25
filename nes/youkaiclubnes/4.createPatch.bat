@echo off
set T_FILENAME="TR_Youkai Club (Japan).nes"
set S_FILENAME="Youkai Club (Japan).nes"
set SCRIPTNAME="youkaiclubnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
