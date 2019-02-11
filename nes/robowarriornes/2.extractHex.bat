@echo off
set T_FILENAME="TR_Robo Warrior (U) [!].nes"
set SCRIPTNAME="robowarriornes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E0:20,ED0:80,9D0:20
pause
