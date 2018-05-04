@echo off
set T_FILENAME="TR_Amazing Spider-Man 3, The - Invasion of the Spider-Slayers (U) [!].gb"
set S_FILENAME="Amazing Spider-Man 3, The - Invasion of the Spider-Slayers (U) [!].gb"
set SCRIPTNAME="amazingspiderman3theinvasionofthespiderslayersgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
