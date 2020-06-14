@echo off
set T_FILENAME="TR_Cliffhanger (U) [c][!].gen"
set SCRIPTNAME="cliffhangersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
