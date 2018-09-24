@echo off
set T_FILENAME="TR_Splatterhouse 3 (U) [c][!].gen"
set SCRIPTNAME="splatterhouse3smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
