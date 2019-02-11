@echo off
set T_FILENAME="TR_After Burner (Tengen) [!].nes"
set S_FILENAME="After Burner (Tengen) [!].nes"
set SCRIPTNAME="afterburnernes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
