@echo off
set T_FILENAME="TR_Incredible Hulk, The (U) [!].gg"
set SCRIPTNAME="incrediblehulkthegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
