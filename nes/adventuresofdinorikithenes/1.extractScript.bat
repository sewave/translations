@echo off
set T_FILENAME="Adventures of Dino Riki, The (U) [!].nes"
set SCRIPTNAME="adventuresofdinorikithenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
