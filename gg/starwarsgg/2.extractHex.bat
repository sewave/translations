@echo off
set T_FILENAME="TR_Star Wars (U) [!].gg"
set SCRIPTNAME="starwarsgg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
