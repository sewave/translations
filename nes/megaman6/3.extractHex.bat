@echo off
set T_FILENAME="TR_Megaman VI (U) [!].nes"
set SCRIPTNAME="megaman6"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 205D0:10,21FF0:20,21410-215A0,2BBB0:A0,9A0:50,2B220:40,205D0:10,23850:20,22480:10,306D0:A0
pause
