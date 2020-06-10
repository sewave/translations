@echo off
set T_FILENAME="TR_Veigues Tactical Gladiator (U).pce"
set S_FILENAME="Veigues Tactical Gladiator (U).pce"
set SCRIPTNAME="veiguestacticalgladiatorpce"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
