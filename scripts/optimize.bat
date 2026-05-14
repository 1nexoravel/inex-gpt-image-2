@echo off
setlocal EnableExtensions EnableDelayedExpansion

REM ============================================================
REM Convert PNG/JPG/JPEG to WEBP recursively
REM Requires ImageMagick ("magick" in PATH)
REM ============================================================

REM ===== CONFIG =====
set "QUALITY=85"
set "MAX_SIZE=2048"

REM Flags
set "DELETE_SOURCE=0"
set "FORCE=0"

REM ============================================================
REM Parse arguments
REM ============================================================

:args
if "%~1"=="" goto start

if /i "%~1"=="--delete-source" (
    set "DELETE_SOURCE=1"
    shift
    goto args
)

if /i "%~1"=="--force" (
    set "FORCE=1"
    shift
    goto args
)

if /i "%~1"=="--help" goto help
if /i "%~1"=="-h" goto help

echo Unknown option: %~1
exit /b 1

REM ============================================================
REM HELP
REM ============================================================

:help
echo.
echo Usage:
echo   optimize.bat
echo   optimize.bat --force
echo   optimize.bat --delete-source
echo.
echo Options:
echo   --force           overwrite existing webp
echo   --delete-source   remove original after conversion
echo.
exit /b 0

REM ============================================================
REM START
REM ============================================================

:start

where magick >nul 2>&1
if errorlevel 1 (
    echo.
    echo ERROR: ImageMagick not found.
    echo Install:
    echo https://imagemagick.org/script/download.php#windows
    echo.
    pause
    exit /b 1
)

set "SCRIPT_DIR=%~dp0"

pushd "%SCRIPT_DIR%.." >nul
set "ROOT=%CD%"

set /a CONVERTED=0
set /a SKIPPED=0
set /a FAILED=0

echo.
echo =====================================
echo Scanning:
echo %ROOT%
echo =====================================
echo.

REM ============================================================
REM Scan files
REM ============================================================

for /r "%ROOT%" %%F in (*.png *.jpg *.jpeg) do (
    call :process_file "%%F"
)

echo.
echo =====================================
echo Finished
echo =====================================
echo Converted: !CONVERTED!
echo Skipped:   !SKIPPED!
echo Failed:    !FAILED!
echo =====================================
echo.

popd >nul
exit /b 0

REM ============================================================
REM PROCESS FILE
REM ============================================================

:process_file

set "INPUT=%~1"
set "OUTPUT=%~dpn1.webp"

REM Ignore folders
echo !INPUT! | findstr /i /c:"\.git\\" /c:"\node_modules\\" /c:"\dist\\" /c:"\build\\" >nul
if not errorlevel 1 exit /b 0

REM Skip existing
if exist "!OUTPUT!" if "%FORCE%"=="0" (
    echo [SKIP] !INPUT!
    set /a SKIPPED+=1
    exit /b 0
)

REM Convert
magick "!INPUT!" ^
    -auto-orient ^
    -resize "%MAX_SIZE%x%MAX_SIZE%>" ^
    -strip ^
    -quality %QUALITY% ^
    -define webp:method=6 ^
    "!OUTPUT!" >nul 2>&1

if errorlevel 1 (
    echo [FAIL] !INPUT!
    set /a FAILED+=1
    exit /b 0
)

echo [OK]   !INPUT!
set /a CONVERTED+=1

REM Delete source
if "%DELETE_SOURCE%"=="1" (
    del /f /q "!INPUT!" >nul 2>&1
)

exit /b 0