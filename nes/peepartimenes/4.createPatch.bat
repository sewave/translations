@echo off
set T_FILENAME="TR_Peepar Time (Japan).nes"
set S_FILENAME="Peepar Time (Japan).nes"
set SCRIPTNAME="peepartimenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
