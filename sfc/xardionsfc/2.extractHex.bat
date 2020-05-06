@echo off
set T_FILENAME="TR_Xardion (USA).sfc"
set SCRIPTNAME="xardionsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex B2900:80,B2B00:80,B3300:80,34405:80,34615:90
pause
