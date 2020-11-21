@echo off
set T_FILENAME="Astro Robo Sasa (Japan).nes"
set SCRIPTNAME="astrorobosasanes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
