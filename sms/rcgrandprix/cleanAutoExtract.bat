@echo off 
set T_FILENAME="R.C. Grand Prix (UE) [!].sms"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
