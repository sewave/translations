@echo off
set T_FILENAME="TR_Grinch, The (USA).gbc"
set SCRIPTNAME="grinchthegbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 5DD11:20,3C00F:A0,90465:60,B46B9:480
pause
