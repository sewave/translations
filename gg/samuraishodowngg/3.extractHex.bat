@echo off
set T_FILENAME="TR_Samurai Shodown (U) [!].gg"
set SCRIPTNAME="samuraishodowngg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
