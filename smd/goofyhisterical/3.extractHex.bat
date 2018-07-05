@echo off
set T_FILENAME="TR_Goofy's Hysterical History Tour (U) [!].bin"
set SCRIPTNAME="goofyhisterical"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
