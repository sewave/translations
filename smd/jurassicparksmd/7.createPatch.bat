@echo off
set T_FILENAME="TR_Jurassic Park (U) [!].gen"
set S_FILENAME="Jurassic Park (U) [!].gen"
set SCRIPTNAME="jurassicparksmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
