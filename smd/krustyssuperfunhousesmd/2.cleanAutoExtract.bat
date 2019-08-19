@echo off
set T_FILENAME="Krusty's Super Funhouse (UE) (REV01) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
