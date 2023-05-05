@echo off
set T_FILENAME="TR_Star Wars - The Arcade Game (1984) (Parker Bros).col"
set SCRIPTNAME="starwarsthearcadegamecol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 380A:40
pause
