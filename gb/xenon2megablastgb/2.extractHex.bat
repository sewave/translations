@echo off
set T_FILENAME="TR_Xenon 2 - Megablast (U).gb"
set SCRIPTNAME="xenon2megablastgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 700A:100,724A:60,E322:40,661E:70,6EA0:10
pause
