@echo off
set T_FILENAME="TR_Dexterity (USA, Europe).gb"
set SCRIPTNAME="dexteritygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 91F0:10,94F0:10,9560:10
pause
