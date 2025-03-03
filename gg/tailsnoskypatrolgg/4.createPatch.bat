@echo off
set T_FILENAME="TR_Tails no Skypatrol (Japan).gg"
set S_FILENAME="Tails no Skypatrol (Japan).gg"
set SCRIPTNAME="tailsnoskypatrolgg"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
