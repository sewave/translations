@echo off
set T_FILENAME="TR_Armed F (Japan).pce"
set S_FILENAME="Armed F (Japan).pce"
set SCRIPTNAME="armedfpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
