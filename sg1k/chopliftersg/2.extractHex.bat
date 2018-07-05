@echo off
set T_FILENAME="TR_Choplifter (SG-1000) [!].sg"
set SCRIPTNAME="chopliftersg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 63DB:40
pause
