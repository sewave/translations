@echo off
set T_FILENAME="TR_Cool World (USA, Europe).gb"
set SCRIPTNAME="coolworldgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1E028:100,1DB14:110,1F907:20
pause
