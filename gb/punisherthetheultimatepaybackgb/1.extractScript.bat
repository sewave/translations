@echo off
set T_FILENAME="Punisher, The - The Ultimate Payback (USA).gb"
set SCRIPTNAME="punisherthetheultimatepaybackgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
