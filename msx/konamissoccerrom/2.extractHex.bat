@echo off
set T_FILENAME="TR_Konami's Soccer (1985) (Konami) (J).rom"
set SCRIPTNAME="konamissoccerrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
