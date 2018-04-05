@echo off
set T_FILENAME="TR_Mickey Mania - Timeless Adventures of Mickey Mouse (U) [!].gen"
set SCRIPTNAME="mickeymaniasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
