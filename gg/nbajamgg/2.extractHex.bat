@echo off
set T_FILENAME="TR_NBA Jam (U) (V1.1) [!].gg"
set SCRIPTNAME="nbajamgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
