@echo off
set T_FILENAME="TR_Pagemaster, The (USA).sfc"
set SCRIPTNAME="pagemasterthesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
