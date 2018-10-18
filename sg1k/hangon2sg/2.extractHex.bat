@echo off
set T_FILENAME="TR_Hang-On 2 (SG-1000).sg"
set SCRIPTNAME="hangon2sg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 703E:20,719E:08,7096:08,713E:08,7156:08
pause
