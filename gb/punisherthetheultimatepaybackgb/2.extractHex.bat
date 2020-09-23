@echo off
set T_FILENAME="TR_Punisher, The - The Ultimate Payback (USA).gb"
set SCRIPTNAME="punisherthetheultimatepaybackgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
