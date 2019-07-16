@echo off
set T_FILENAME="TR_Advanced Dungeons & Dragons - Heroes of the Lance (U) [!].nes"
set SCRIPTNAME="advanceddungeonsdragonsheroesofthelancenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
