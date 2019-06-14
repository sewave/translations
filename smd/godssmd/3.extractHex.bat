@echo off
set T_FILENAME="TR_Gods (U) [!].bin"
set SCRIPTNAME="godssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
