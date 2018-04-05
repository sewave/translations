@echo off
set T_FILENAME="TR_Strider Returns (U) [!].gg"
set SCRIPTNAME="strider2gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17B00-17B7F
pause
