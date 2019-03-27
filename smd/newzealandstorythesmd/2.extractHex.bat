@echo off
set T_FILENAME="TR_New Zealand Story, The (J) [!].gen"
set SCRIPTNAME="newzealandstorythesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
