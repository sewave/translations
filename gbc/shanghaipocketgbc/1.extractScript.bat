@echo off
set T_FILENAME="Shanghai Pocket (U) (V1.1) [C][!].gbc"
set SCRIPTNAME="shanghaipocketgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
