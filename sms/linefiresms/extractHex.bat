@echo off 
set T_FILENAME="TR_Line of Fire (E) [!].sms"
set SCRIPTNAME="linefiresms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1C47F-1C67F,C74E-C82E,149F1:20,14A91:20,160A4-16164,16264:40,16364:40,
pause 
