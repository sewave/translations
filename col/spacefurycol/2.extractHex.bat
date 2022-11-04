@echo off
set T_FILENAME="TR_Space Fury (1983) (Sega).col"
set SCRIPTNAME="spacefurycol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
