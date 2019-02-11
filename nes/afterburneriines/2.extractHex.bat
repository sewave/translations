@echo off
set T_FILENAME="TR_After Burner II (J).nes"
set SCRIPTNAME="afterburneriines"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3ADE0:10,3AEE0:10,3AFE0:10,39DF0:20
pause
