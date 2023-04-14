@echo off
set T_FILENAME="TR_Bugs Bunny in Crazy Castle 4 (USA).gbc"
set SCRIPTNAME="bugsbunnyincrazycastle4gbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 425AB:8
pause
