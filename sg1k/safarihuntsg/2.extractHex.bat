@echo off
set T_FILENAME="TR_Safari Hunt (SG-1000) [!].sg"
set SCRIPTNAME="safarihuntsg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
