@echo off
set T_FILENAME="TR_Worms (U) [!].gb"
set SCRIPTNAME="wormsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3A132:50,3A4E2:50,3A892:50
pause
