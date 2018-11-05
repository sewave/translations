@echo off
set T_FILENAME="TR_Jurassic Park 2 - The Lost World (U) [!].bin"
set S_FILENAME="Jurassic Park 2 - The Lost World (U) [!].bin"
set SCRIPTNAME="jurassicpark2smd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
