@echo off
set T_FILENAME="X-Men - Wolverine's Rage (USA).gbc"
set SCRIPTNAME="xmenwolverinesragegbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
