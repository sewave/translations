@echo off
set T_FILENAME="TR_Jurassic Park 2 - The Chaos Continues (UE) (M4) [!].gb"
set S_FILENAME="Jurassic Park 2 - The Chaos Continues (UE) (M4) [!].gb"
set SCRIPTNAME="jurassicpark2thechaoscontinuesgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
