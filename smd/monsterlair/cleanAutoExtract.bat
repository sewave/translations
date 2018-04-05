@echo off 
set T_FILENAME="Wonder Boy III - Monster Lair (JE) [c][!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.arg
pause 
