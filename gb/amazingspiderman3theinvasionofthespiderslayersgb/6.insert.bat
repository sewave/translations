@echo off
set T_FILENAME="TR_Amazing Spider-Man 3, The - Invasion of the Spider-Slayers (U) [!].gb"
set S_FILENAME="Amazing Spider-Man 3, The - Invasion of the Spider-Slayers (U) [!].gb"
set SCRIPTNAME="amazingspiderman3theinvasionofthespiderslayersgb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
