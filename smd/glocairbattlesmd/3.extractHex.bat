@echo off
set T_FILENAME="TR_G-LOC Air Battle (W) [c][!].bin"
set SCRIPTNAME="glocairbattlesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
