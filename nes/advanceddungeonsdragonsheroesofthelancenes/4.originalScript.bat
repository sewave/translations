@echo off
set T_FILENAME="Advanced Dungeons & Dragons - Heroes of the Lance (U) [!].nes"
set SCRIPTNAME="advanceddungeonsdragonsheroesofthelancenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
