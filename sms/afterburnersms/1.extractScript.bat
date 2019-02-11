@echo off
set T_FILENAME="After Burner (World).sms"
set SCRIPTNAME="afterburnersms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
