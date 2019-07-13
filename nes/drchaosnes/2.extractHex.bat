@echo off
set T_FILENAME="TR_Dr. Chaos (U) [!].nes"
set SCRIPTNAME="drchaosnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5830:300,4E70:50,4F70:50,6230:80,6330:80,6430:30
pause
