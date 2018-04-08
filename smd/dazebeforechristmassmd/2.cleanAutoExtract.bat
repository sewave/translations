@echo off
set T_FILENAME="Daze Before Christmas, The (E) [!].bin"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
