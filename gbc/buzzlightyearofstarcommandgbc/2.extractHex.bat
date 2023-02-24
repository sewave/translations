@echo off
set T_FILENAME="TR_Buzz Lightyear of Star Command (USA, Europe).gbc"
set SCRIPTNAME="buzzlightyearofstarcommandgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 17C3B:140
pause
