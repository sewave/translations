@echo off
set T_FILENAME="TR_Kid Chameleon (USA, Europe).md"
set SCRIPTNAME="kidchameleonsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 101000:100
pause
