@echo off
set T_FILENAME="Deep Duck Trouble Starring Donald Duck (U) [!].gg"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
