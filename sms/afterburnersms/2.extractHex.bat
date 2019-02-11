@echo off
set T_FILENAME="TR_After Burner (World).sms"
set SCRIPTNAME="afterburnersms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 4AE2A:440,4B9CA:40,57838:600
pause
