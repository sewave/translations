@echo off
set T_FILENAME="TR_Pagemaster, The (USA).md"
set SCRIPTNAME="pagemasterthesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
