@echo off
set T_FILENAME="TR_Konami's Tennis (1984) (Konami) (J).rom"
set SCRIPTNAME="konamistennisrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
