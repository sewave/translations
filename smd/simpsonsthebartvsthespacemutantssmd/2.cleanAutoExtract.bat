@echo off
set T_FILENAME="Simpsons, The - Bart vs The Space Mutants (UE) (REV01) [!].gen"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
