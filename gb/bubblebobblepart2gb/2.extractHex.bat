@echo off
set T_FILENAME="TR_Bubble Bobble Part 2 (USA, Europe).gb"
set SCRIPTNAME="bubblebobblepart2gb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 13B30:40,1FA1B:80
pause
