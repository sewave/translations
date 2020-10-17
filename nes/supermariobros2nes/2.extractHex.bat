@echo off
set T_FILENAME="TR_Super Mario Bros. 2 (J) [hM04].nes"
set SCRIPTNAME="supermariobros2nes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 11150:10,11210:20,13150:10,13210:20,11760:20,13760:20
pause
