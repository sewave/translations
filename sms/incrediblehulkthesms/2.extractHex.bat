@echo off
set T_FILENAME="TR_Incredible Hulk, The (Europe, Brazil).sms"
set SCRIPTNAME="incrediblehulkthesms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 50020:C0
pause
