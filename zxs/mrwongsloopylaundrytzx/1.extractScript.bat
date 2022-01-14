@echo off
set T_FILENAME="Mr Wong's Loopy Laundry.tzx"
set SCRIPTNAME="mrwongsloopylaundrytzx"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
