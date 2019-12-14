@echo off
set T_FILENAME="TR_Konami's Boxing (1985) (Konami) (J).rom"
set SCRIPTNAME="konamisboxingrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21C2:88
pause
