@echo off
set T_FILENAME="TR_Pagemaster, The (USA) (SGB Enhanced).gb"
set SCRIPTNAME="pagemasterthegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
