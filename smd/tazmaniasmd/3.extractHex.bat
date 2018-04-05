@echo off
set T_FILENAME="TR_Taz-Mania (W) [!].bin"
set SCRIPTNAME="tazmaniasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
