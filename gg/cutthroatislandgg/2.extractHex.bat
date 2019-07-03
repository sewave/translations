@echo off
set T_FILENAME="TR_Cutthroat Island (U) [!].gg"
set SCRIPTNAME="cutthroatislandgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 443C3:A0,3B360:60
pause
