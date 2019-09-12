@echo off
set T_FILENAME="TR_Greendog (U).gg"
set SCRIPTNAME="greendoggg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1B86A:100,1A06F:20
pause
