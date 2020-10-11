@echo off
@REM Copy contents to temp directory. Cannot use the /move option because it will also try to delete the current directory.
robocopy . ..\__tmp__ /mir /np /nfl /njh /njs /ndl

@REM Remove the contents here because we could not make a move above.
del /s /q * >nul
for /F "delims=" %%i in ('dir /b') do (rmdir "%%i" /s/q)

@REM Duplicate the contents for every user.
robocopy ..\__tmp__ konexio /mir /np /nfl /njh /njs /ndl
for %%x in (%*) do (robocopy ..\__tmp__ %%x /mir /np /nfl /njh /njs /ndl)

@REM Remove the temp directory.
rmdir ..\__tmp__ /s/q

echo Done.
