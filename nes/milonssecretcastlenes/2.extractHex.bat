@echo off
set T_FILENAME="TR_Milon's Secret Castle (USA).nes"
set SCRIPTNAME="milonssecretcastlenes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 96B0:10,97C0:20,BAB0:90,C990:20,D790:10
pause
