@echo off
set T_FILENAME="Atomic Robo-Kid Special (Japan).pce"
set SCRIPTNAME="atomicrobokidspecialpce"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
