@echo off 
set T_FILENAME="Jewel Master (UE) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
