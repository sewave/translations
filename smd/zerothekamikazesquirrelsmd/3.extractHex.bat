@echo off
set T_FILENAME="TR_Zero the Kamikaze Squirrel (U) [!].gen"
set SCRIPTNAME="zerothekamikazesquirrelsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
