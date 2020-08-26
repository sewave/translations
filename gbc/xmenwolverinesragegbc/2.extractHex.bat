@echo off
set T_FILENAME="TR_X-Men - Wolverine's Rage (USA).gbc"
set SCRIPTNAME="xmenwolverinesragegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AF92D:20,AFA3D:60,AFC3D:50,AFE7D:30
pause
