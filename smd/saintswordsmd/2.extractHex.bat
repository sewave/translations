@echo off
set T_FILENAME="TR_Saint Sword (U) [c][!].bin"
set SCRIPTNAME="saintswordsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
