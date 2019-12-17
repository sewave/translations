@echo off
set T_FILENAME="TR_Konami's Baseball (1984) (Konami) (J).rom"
set SCRIPTNAME="konamisbaseballrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
