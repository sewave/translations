@echo off
set T_FILENAME="TR_Super Monaco GP (U) [!].gg"
set SCRIPTNAME="supermonacogpgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
