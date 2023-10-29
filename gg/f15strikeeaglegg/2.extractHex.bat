@echo off
set T_FILENAME="TR_F-15 Strike Eagle (USA, Europe).gg"
set SCRIPTNAME="f15strikeeaglegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
