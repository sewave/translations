@echo off
set T_FILENAME="Battle Ship Clapton 2 (1983) (T&E Soft) (J).rom"
set SCRIPTNAME="battleshipclapton2rom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
