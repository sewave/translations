@echo off
set T_FILENAME="TR_Blues Brothers, The - Jukebox Adventure (U).gb"
set S_FILENAME="Blues Brothers, The - Jukebox Adventure (U).gb"
set SCRIPTNAME="bluesbrothersthejukeboxadventuregb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
