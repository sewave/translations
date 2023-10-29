@echo off
set T_FILENAME="TR_F-15 Strike Eagle (USA, Europe).gb"
set SCRIPTNAME="f15strikeeaglegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
