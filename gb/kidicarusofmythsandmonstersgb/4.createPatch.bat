@echo off
set T_FILENAME="TR_Kid Icarus - Of Myths and Monsters (UE) [!].gb"
set S_FILENAME="Kid Icarus - Of Myths and Monsters (UE) [!].gb"
set SCRIPTNAME="kidicarusofmythsandmonstersgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
