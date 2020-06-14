@echo off
set T_FILENAME="TR_Cliffhanger (U) [!].gg"
set SCRIPTNAME="cliffhangergg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6939:30,6A31:20,6789:8
pause
