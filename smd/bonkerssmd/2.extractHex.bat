@echo off
set T_FILENAME="TR_Bonkers (UE) [!].bin"
set SCRIPTNAME="bonkerssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
