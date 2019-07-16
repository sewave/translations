@echo off
set T_FILENAME="TR_Bomberman (U).pce"
set S_FILENAME="Bomberman (U).pce"
set SCRIPTNAME="bombermanpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
