@echo off
set T_FILENAME="Spider-Man and Venom - Separation Anxiety (U) [!].gen"
set SCRIPTNAME="spdvensepasmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
