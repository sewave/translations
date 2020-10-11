@echo off
set T_FILENAME="TR_Onyanko Town (Japan).nes"
set SCRIPTNAME="onyankotownnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 80F0:10,9910:40,80F0:10
pause
