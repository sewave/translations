@echo off
set T_FILENAME="TR_Jaws (USA).nes"
set SCRIPTNAME="jawsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FE10:200,E310:30,E410:30,9110:100,D0B0:10,9270:10,9300:10,9400:10,9580:20
pause
