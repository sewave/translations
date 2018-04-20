@echo off 
set T_FILENAME="TR_Robocop versus The Terminator (UE) [!].sms"
set SCRIPTNAME="rbcvstrmsms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
