@echo off
set T_FILENAME="TR_Brainbender (U) [!].gb"
set SCRIPTNAME="brainbendergb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
