@echo off
set T_FILENAME="TR_After Burner (World).sms"
set S_FILENAME="After Burner (World).sms"
set SCRIPTNAME="afterburnersms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
