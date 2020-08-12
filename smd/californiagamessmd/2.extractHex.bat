@echo off
set T_FILENAME="TR_California Games (USA, Europe).md"
set SCRIPTNAME="californiagamessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 28238:80,282F8:10,283B8:30,285B8:10
pause
