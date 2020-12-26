@echo off
set T_FILENAME="TR_Robocco Wars (Japan).nes"
set SCRIPTNAME="roboccowarsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5B230:10,50750:10,51750:10,52750:10,54750:10,55750:10,56750:10,5E630:50,4CE70:80,4CF70:80,5F510:20,5FEA0:70,5FDA0:70
pause
