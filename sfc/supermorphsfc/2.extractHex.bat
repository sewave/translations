@echo off
set T_FILENAME="TR_Super Morph (Europe).sfc"
set SCRIPTNAME="supermorphsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9DE4E:40,9E04E:40
pause
