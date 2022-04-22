@echo off
set T_FILENAME="TR_World of Illusion Starring Mickey Mouse and Donald Duck (USA, Korea).md"
set SCRIPTNAME="worldofillusionsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
