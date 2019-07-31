@echo off
set T_FILENAME="TR_Ishido - The Way of the Stones (U) [c][!].bin"
set SCRIPTNAME="ishidothewayofthestonessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 2E1A:40
pause
