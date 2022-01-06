@echo off
set T_FILENAME="TR_The_Dark_Redux.tap"
set SCRIPTNAME="thedarkreduxtap"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E4C:20,706B:10
pause
