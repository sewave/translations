@echo off
set T_FILENAME="TR_Contra Advance - The Alien Wars EX (USA).gba"
set SCRIPTNAME="contraadvancethealienwarsexgba"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 184CC0:200,184B60:20
pause
