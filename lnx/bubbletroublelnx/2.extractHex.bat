@echo off
set T_FILENAME="TR_Bubble Trouble (USA, Europe).lnx"
set SCRIPTNAME="bubbletroublelnx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 25D4:20
pause
