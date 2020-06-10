@echo off
set T_FILENAME="TR_Veigues Tactical Gladiator (U).pce"
set S_FILENAME="Veigues Tactical Gladiator (U).pce"
set SCRIPTNAME="veiguestacticalgladiatorpce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
