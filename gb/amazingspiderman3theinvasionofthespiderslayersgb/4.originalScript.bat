@echo off
set T_FILENAME="Amazing Spider-Man 3, The - Invasion of the Spider-Slayers (U) [!].gb"
set SCRIPTNAME="amazingspiderman3theinvasionofthespiderslayersgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
