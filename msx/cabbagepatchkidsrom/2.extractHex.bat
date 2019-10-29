@echo off
set T_FILENAME="TR_Cabbage Patch Kids (1983) (Konami) (J).rom"
set SCRIPTNAME="cabbagepatchkidsrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B6F:38
pause
