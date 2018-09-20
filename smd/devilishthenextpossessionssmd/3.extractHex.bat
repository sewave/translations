@echo off
set T_FILENAME="TR_Devilish - The Next Possession (U) [c][!].gen"
set SCRIPTNAME="devilishthenextpossessionssmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
