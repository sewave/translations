@echo off
set T_FILENAME="Aquatic Games - Starring James Pond, The (UE) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
