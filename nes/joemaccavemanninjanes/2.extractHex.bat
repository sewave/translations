@echo off
set T_FILENAME="TR_Joe & Mac - Caveman Ninja (U) [!].nes"
set SCRIPTNAME="joemaccavemanninjanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 21360:20,21A20:60,39630:20
pause
