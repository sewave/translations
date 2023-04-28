@echo off
set T_FILENAME="TR_Dark Fusion.tzx"
set SCRIPTNAME="darkfusiontzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
