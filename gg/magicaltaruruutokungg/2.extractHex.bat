@echo off
set T_FILENAME="TR_Magical Taruruuto-kun (Japan).gg"
set SCRIPTNAME="magicaltaruruutokungg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
