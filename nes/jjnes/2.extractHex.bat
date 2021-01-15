@echo off
set T_FILENAME="TR_JJ (Japan).nes"
set SCRIPTNAME="jjnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 14CC0:10,15210:140,16790:10,16A10:10,16AC0:20,16B10:10,16BC0:20,16A30:10,12D10:70
pause
