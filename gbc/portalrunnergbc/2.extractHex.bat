@echo off
set T_FILENAME="TR_Portal Runner (USA).gbc"
set SCRIPTNAME="portalrunnergbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4E801:50,4EF20:80,4F0B0:10,4F0F0:10,
pause
