@echo off
set T_FILENAME="TR_Astro Rabby (Japan).gb"
set SCRIPTNAME="astrorabbygb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 96F0:10,A490:40
pause
