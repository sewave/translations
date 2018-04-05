@echo off
set T_FILENAME="TR_Jungle Book, The (UE) [!].sms"
set SCRIPTNAME="junglebooksms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
