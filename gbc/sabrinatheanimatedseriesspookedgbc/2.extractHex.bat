@echo off
set T_FILENAME="TR_Sabrina - The Animated Series - Spooked! (USA, Europe).gbc"
set SCRIPTNAME="sabrinatheanimatedseriesspookedgbc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F0470:80,E00E1:A0,E0262:A0,E03E3:A0,E0564:A0,E06E5:A0,E0866:A0,E09E7:A0,E0B68:A0,E0CE9:A0,E0E6A:A0,E0FEB:A0,E116C:A0,E12ED:A0,E146E:A0,E15EF:A0,E1770:A0
pause
