@echo off
set T_FILENAME="TR_Frogger (1983) (Konami) (J).rom"
set SCRIPTNAME="froggerrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B39:10,BF9:8
pause
