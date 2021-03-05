@echo off
set T_FILENAME="TR_Incredible Hulk, The (USA, Europe).gg"
set SCRIPTNAME="incrediblehulkthegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50020:C0
pause
