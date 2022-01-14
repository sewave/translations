@echo off
set T_FILENAME="TR_Mr Wong's Loopy Laundry.tzx"
set SCRIPTNAME="mrwongsloopylaundrytzx"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3E3A:60
pause
