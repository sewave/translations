@echo off
set T_FILENAME="TR_Warp Warp (1984) (Namcot) (J).rom"
set SCRIPTNAME="warpwarprom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1FD0:10,1FF8:8,1B90:40,1BF8:08,1F78:40
pause
