@echo off
set T_FILENAME="TR_Mighty Morphin Power Rangers (U) [!].bin"
set SCRIPTNAME="powerrangerssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
