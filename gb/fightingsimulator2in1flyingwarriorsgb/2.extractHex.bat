@echo off
set T_FILENAME="TR_Fighting Simulator 2 in 1 - Flying Warriors (USA, Europe).gb"
set SCRIPTNAME="fightingsimulator2in1flyingwarriorsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 184D0:30,185B0:50
pause
