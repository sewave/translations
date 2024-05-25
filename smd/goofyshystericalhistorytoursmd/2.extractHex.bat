@echo off
set T_FILENAME="TR_Goofy's Hysterical History Tour (USA).md"
set SCRIPTNAME="goofyshystericalhistorytoursmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FD600:100,75534:C0,75EF4:C0,76A34:80
pause
