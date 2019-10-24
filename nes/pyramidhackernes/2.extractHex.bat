@echo off
set T_FILENAME="TR_Pyramid (Japan) (Hacker inc.) (Unl).nes"
set SCRIPTNAME="pyramidhackernes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8FA0:50,14FA0:50,16FA0:50,17180:20,15180:20,9180:20
pause
