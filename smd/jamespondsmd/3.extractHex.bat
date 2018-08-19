@echo off
set T_FILENAME="TR_James Pond - Underwater Agent (UE) [!].bin"
set SCRIPTNAME="jamespondsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
