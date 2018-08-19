@echo off
set T_FILENAME="TR_Mighty Morphin Power Rangers - The Movie (U) [!].bin"
set SCRIPTNAME="powerrangersmoviesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
