@echo off
set T_FILENAME="TR_Astro Robo Sasa (Japan).nes"
set S_FILENAME="Astro Robo Sasa (Japan).nes"
set SCRIPTNAME="astrorobosasanes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
