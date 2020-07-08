@echo off
set T_FILENAME="TR_Gradius (Japan).pce"
set S_FILENAME="Gradius (Japan).pce"
set SCRIPTNAME="gradiuspce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
