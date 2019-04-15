@echo off
set T_FILENAME="TR_Spider-Man and Venom - Separation Anxiety (U) [!].gen"
set S_FILENAME="Spider-Man and Venom - Separation Anxiety (U) [!].gen"
set SCRIPTNAME="spdvensepasmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
