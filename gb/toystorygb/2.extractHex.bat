@echo off
set T_FILENAME="TR_Toy Story (USA) (Rev 1) (SGB Enhanced).gb"
set SCRIPTNAME="toystorygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 102F0:80,10FD0:80
pause
