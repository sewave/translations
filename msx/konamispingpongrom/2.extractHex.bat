@echo off
set T_FILENAME="TR_konami's ping pong (1985) (konami) (j).rom"
set SCRIPTNAME="konamispingpongrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
