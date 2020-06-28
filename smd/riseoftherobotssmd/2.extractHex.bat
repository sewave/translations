@echo off
set T_FILENAME="TR_Rise of the Robots (E) [!].bin"
set SCRIPTNAME="riseoftherobotssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
