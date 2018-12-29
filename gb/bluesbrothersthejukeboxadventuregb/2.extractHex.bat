@echo off
set T_FILENAME="TR_Blues Brothers, The - Jukebox Adventure (U).gb"
set SCRIPTNAME="bluesbrothersthejukeboxadventuregb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
