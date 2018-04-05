@echo off
set T_FILENAME="TR_Incredible Hulk, The (E) [!].sms"
set SCRIPTNAME="incrediblehulkthesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
