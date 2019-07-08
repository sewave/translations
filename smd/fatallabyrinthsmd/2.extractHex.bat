@echo off
set T_FILENAME="TR_Fatal Labyrinth (JU) [!].bin"
set SCRIPTNAME="fatallabyrinthsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 19AE0:380
pause
