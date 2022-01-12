@echo off
del YourPackageFilenameHere.u

if %ERRORLEVEL% GEQ 1 (
	echo Error while deleting the file, stopping batch file.
	pause
	exit 1
)

ucc make

if %ERRORLEVEL% GEQ 1 (
	echo Error while compiling, stopping batch file.
	pause
	exit 1
)

UnrealTournament.exe DM-Deck16][?Mutator=YourPackageFilenameHere.YourMutatorClassHere
