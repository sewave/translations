@echo off 
set T_FILENAME="Wanpaku Kokkun no Gourmet World (J) [T+ENG].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.args
pause 
