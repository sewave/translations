@echo off
set T_FILENAME="TR_Atomic Robo-Kid Special (J).pce"
set SCRIPTNAME="atomicrobokidspecialpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72200:100,72600:80,70000:2000,7F8A0:80,7C000:600
pause
