@echo off
set T_FILENAME="TR_Color Ball (1983) (Hudson) (J).rom"
set SCRIPTNAME="colorballrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1D07:80
pause
