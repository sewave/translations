@echo off
set T_FILENAME="TR_Bonanza Bros. (U) [!].gen"
set SCRIPTNAME="bonanzabrossmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
