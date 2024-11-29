@echo off
set T_FILENAME="TR_Kid Dracula (USA, Europe).gb"
set SCRIPTNAME="kiddraculagb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1F910:8,1FA10:10,1FA30:18,1F9D0:10
pause
