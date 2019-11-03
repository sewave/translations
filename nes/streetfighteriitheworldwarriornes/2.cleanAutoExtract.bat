@echo off
set T_FILENAME="Street Fighter II - The World Warrior (Unl) [!].nes"
java -jar Hextractor.jar -cef %T_FILENAME%.ext %T_FILENAME%.ext.off
pause
