@echo off
set T_FILENAME="TR_Cutthroat Island (U).gb"
set SCRIPTNAME="cutthroatislandgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 276DC:A0
pause
