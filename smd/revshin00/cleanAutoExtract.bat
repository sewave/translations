@echo off 
set T_FILENAME="Revenge of Shinobi, The (W) (REV00) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause 
