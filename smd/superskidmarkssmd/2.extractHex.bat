@echo off
set T_FILENAME="TR_Super Skidmarks (Europe) (J-Cart).md"
set SCRIPTNAME="superskidmarkssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
