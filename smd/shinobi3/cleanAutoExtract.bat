@echo off 
set T_FILENAME="Shinobi III - Return of the Ninja Master (U) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
