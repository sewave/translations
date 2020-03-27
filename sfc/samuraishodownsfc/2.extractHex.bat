@echo off
set T_FILENAME="TR_Samurai Shodown (USA).sfc"
set SCRIPTNAME="samuraishodownsfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1480A0:80,173900:10,186BA0:A00,1765C0:100
pause
