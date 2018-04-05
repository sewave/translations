@echo off 
set T_FILENAME="TR_Robocop 3 (U) [!].gg"
set SCRIPTNAME="robocop3gg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
