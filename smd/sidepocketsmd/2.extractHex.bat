@echo off
set T_FILENAME="TR_Side Pocket (JU) [!].gen"
set SCRIPTNAME="sidepocketsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
