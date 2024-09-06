@echo off
set T_FILENAME="TR_Ninja Gaiden III - The Ancient Ship of Doom (USA).nes"
set SCRIPTNAME="ninjagaideniiitheancientshipofdoomnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 20350:80,20A10:100,33BF0:20,33910:100,33C10:60,20BB0:10,C903:47,21C50:400,21690:1A0,21A30:60,21B30:20
pause
