@echo off
set T_FILENAME="TR_Universal Soldier (U) [!].gen"
set SCRIPTNAME="universalsoldiersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
