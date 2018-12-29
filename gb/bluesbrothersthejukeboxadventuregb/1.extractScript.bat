@echo off
set T_FILENAME="Blues Brothers, The - Jukebox Adventure (U).gb"
set SCRIPTNAME="bluesbrothersthejukeboxadventuregb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
