@echo off
set T_FILENAME="TR_Wario Blast featuring Bomberman! (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="warioblastgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
