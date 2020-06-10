@echo off
set T_FILENAME="Veigues Tactical Gladiator (U).pce"
set SCRIPTNAME="veiguestacticalgladiatorpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
