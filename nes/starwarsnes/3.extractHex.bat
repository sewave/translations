@echo off
set T_FILENAME="TR_Star Wars (U) [!].nes"
set SCRIPTNAME="starwarsnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 24010-24410
pause
