@echo off 
set T_FILENAME="Twinkle Tale (J) [T+Eng20070328_MIJET].bin"
set SCRIPTNAME="twinkle"
java -jar Hextractor.jar -sa %SCRIPTNAME%.tbl %T_FILENAME% 4 FA 
pause 
