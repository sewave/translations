@echo off
set T_FILENAME="TR_Mickey's Dangerous Chase (U) [!].gb"
set SCRIPTNAME="mickeysdangerouschasegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
