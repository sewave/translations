@echo off
set T_FILENAME="TR_Home Alone 2 - Lost in New York (U) [!].bin"
set SCRIPTNAME="homealone2lostinnewyorksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
