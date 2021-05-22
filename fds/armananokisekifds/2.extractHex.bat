@echo off
set T_FILENAME="TR_Armana no Kiseki (Japan).fds"
set SCRIPTNAME="armananokisekifds"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 375F:10,87C:80
pause
