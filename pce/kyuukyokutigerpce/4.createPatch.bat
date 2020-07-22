@echo off
set T_FILENAME="TR_Kyuukyoku Tiger (Japan).pce"
set S_FILENAME="Kyuukyoku Tiger (Japan).pce"
set SCRIPTNAME="kyuukyokutigerpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
