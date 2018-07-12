@echo off
set T_FILENAME="Adventures of Captain Comic, The (Color Dreams) [!].nes"
set SCRIPTNAME="adventuresofcaptaincomicthenes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
