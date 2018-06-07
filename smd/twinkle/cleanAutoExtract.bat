@echo off 
set T_FILENAME="Twinkle Tale (J) [T+Eng20070328_MIJET].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
