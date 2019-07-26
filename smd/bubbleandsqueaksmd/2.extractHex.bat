@echo off
set T_FILENAME="TR_Bubble and Squeak (U) [!].bin"
set SCRIPTNAME="bubbleandsqueaksmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
