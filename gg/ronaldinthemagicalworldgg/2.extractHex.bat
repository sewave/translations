@echo off
set T_FILENAME="TR_Ronald in the Magical World (JU).gg"
set SCRIPTNAME="ronaldinthemagicalworldgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 43260:20,5EDA0:300
pause
