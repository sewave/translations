@echo off
set T_FILENAME="TR_Spider-Man & Venom - Separation Anxiety (U).smc"
set S_FILENAME="Spider-Man & Venom - Separation Anxiety (U).smc"
set SCRIPTNAME="spdvensepasnes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
