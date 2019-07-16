@echo off
set T_FILENAME="TR_Advanced Dungeons & Dragons - Heroes of the Lance (U) [!].nes"
set S_FILENAME="Advanced Dungeons & Dragons - Heroes of the Lance (U) [!].nes"
set SCRIPTNAME="advanceddungeonsdragonsheroesofthelancenes"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
