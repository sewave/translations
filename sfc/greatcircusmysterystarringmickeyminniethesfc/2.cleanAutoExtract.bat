@echo off
set T_FILENAME="Great Circus Mystery Starring Mickey & Minnie, The (U).smc"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
