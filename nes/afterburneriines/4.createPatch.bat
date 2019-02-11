@echo off
set T_FILENAME="TR_After Burner II (J).nes"
set S_FILENAME="After Burner II (J).nes"
set SCRIPTNAME="afterburneriines"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
