@echo off
set T_FILENAME="TR_Astro Robo Sasa (Japan).nes"
set SCRIPTNAME="astrorobosasanes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 9E60:10,9F40:20
pause
