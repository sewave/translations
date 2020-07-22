@echo off
set T_FILENAME="Kyuukyoku Tiger (Japan).pce"
set SCRIPTNAME="kyuukyokutigerpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
