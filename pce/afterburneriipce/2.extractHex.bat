@echo off
set T_FILENAME="TR_After Burner II (J).pce"
set SCRIPTNAME="afterburneriipce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 363A0:A0,36560:80
pause
