@echo off
set T_FILENAME="TR_Megaman II (U) [!].nes"
set SCRIPTNAME="megaman2"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 26950:30,26A90:40,24470:50,20610:70
pause
