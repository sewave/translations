@echo off
set T_FILENAME="TR_Antarctic Adventure (1984) (Konami) (J).rom"
set S_FILENAME="Antarctic Adventure (1984) (Konami) (J).rom"
set SCRIPTNAME="antarcticadventurerom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
