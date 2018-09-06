@echo off
set T_FILENAME="Simpsons, The - Bart vs. the World (E) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
