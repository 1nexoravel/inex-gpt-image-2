@echo off
REM Scan the repo for .png images and convert them to optimized .webp.
REM Skips files where the .webp already exists (idempotent — safe to re-run).
REM
REM Usage:
REM   scripts\optimize.bat                  Normal run
REM   scripts\optimize.bat --force          Re-convert even if .webp exists
REM   scripts\optimize.bat --delete-source  Delete .png after success
REM   scripts\optimize.bat --dry-run        Show what would happen
REM
REM Requirements:
REM   - ImageMagick 7+ (magick command on PATH)

setlocal EnableExtensions EnableDelayedExpansion

REM ===== Parse flags =====
set "DELETE_SOURCE=0"
set "FORCE=0"
set "DRY_RUN=0"

:parse_flags
if "%~1"=="" goto flags_done
if /i "%~1"=="--delete-source" set "DELETE_SOURCE=1" & shift & goto parse_flags
if /i "%~1"=="--force"         set "FORCE=1"         & shift & goto parse_flags
if /i "%~1"=="--dry-run"       set "DRY_RUN=1"       & shift & goto parse_flags
if /i "%~1"=="-h"              goto show_help
if /i "%~1"=="--help"          goto show_help
echo Unknown flag: %~1
echo Run with --help for usage.
exit /b 1

:show_help
echo Usage:
echo   %~nx0                   Convert all .png to .webp, skipping existing
echo   %~nx0 --force           Re-convert even if .webp already exists
echo   %~nx0 --delete-source   Delete .png after successful conversion
echo   %~nx0 --dry-run         Show what would happen, do nothing
exit /b 0

:flags_done

REM ===== Check ImageMagick =====
where magick >nul 2>&1
if errorlevel 1 (
    echo Error: 'magick' ^(ImageMagick 7+^) not found on PATH.
    echo Install from: https://imagemagick.org/script/download.php#windows
    echo Or run:       winget install ImageMagick.ImageMagick
    exit /b 1
)

REM ===== Locate repo root (script lives in <repo>\scripts\) =====
set "SCRIPT_DIR=%~dp0"
pushd "%SCRIPT_DIR%.." >nul
set "REPO_ROOT=%CD%"

REM ===== Counters =====
set "CONVERTED=0"
set "SKIPPED=0"
set "FAILED=0"

echo Scanning %REPO_ROOT% for .png files...
echo.

REM ===== Walk every .png — delegate processing to subroutine =====
for /r "%REPO_ROOT%" %%P in (*.png) do call :process_file "%%P"

popd >nul

REM ===== Summary =====
echo.
echo -------------------------------------
echo   Converted: %CONVERTED%
echo   Skipped:   %SKIPPED%  (already had .webp)
if %FAILED% gtr 0 echo   Failed:    %FAILED%
echo -------------------------------------

if %DRY_RUN%==1 echo (Dry run - no files were actually modified.)

exit /b 0


REM ============================================================
REM Subroutine: process a single .png file
REM   %~1 = full path to the .png
REM ============================================================
:process_file
set "PNG=%~1"
set "WEBP=%~dpn1.webp"

REM Skip files in excluded folders
echo !PNG! | findstr /i /c:"\.git\\" /c:"\node_modules\\" /c:"\raw\\" >nul
if not errorlevel 1 exit /b 0

REM Already converted?
if exist "!WEBP!" if "%FORCE%"=="0" (
    echo [SKIP]    !PNG!
    set /a SKIPPED+=1
    exit /b 0
)

REM Dry-run mode
if "%DRY_RUN%"=="1" (
    echo [WOULD]   !PNG!
    set /a CONVERTED+=1
    exit /b 0
)

REM Actually convert
magick "!PNG!" -resize "1024x1024>" -quality 85 -strip "!WEBP!" >nul 2>&1
if errorlevel 1 (
    echo [FAIL]    !PNG!
    set /a FAILED+=1
    exit /b 0
)

echo [OK]      !PNG!
set /a CONVERTED+=1

if "%DELETE_SOURCE%"=="1" (
    del "!PNG!"
    echo           Removed source.
)

exit /b 0