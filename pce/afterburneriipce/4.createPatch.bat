@echo off
set T_FILENAME="TR_After Burner II (J).pce"
set S_FILENAME="After Burner II (J).pce"
set SCRIPTNAME="afterburneriipce"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
