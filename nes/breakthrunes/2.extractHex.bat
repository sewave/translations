@echo off
set T_FILENAME="TR_BreakThru (U) [!].nes"
set SCRIPTNAME="breakthrunes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25720:30,267F0:A0,26C90:80,26D90:80,26ED0:20,26FD0:20
pause
