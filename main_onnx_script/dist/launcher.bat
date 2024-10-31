@echo off
REM Save the current directory
pushd %~dp0

REM Run the Python script and check for errors
echo Running main_onnx.py...
python "C:\Users\rubbe\OneDrive\Desktop\Assistive-AimGuide-main\Assistive-AimGuide-main\main_onnx_script\dist\main_onnx.py"
if %errorlevel% neq 0 (
    echo Error: main_onnx.py did not run successfully. Error level: %errorlevel%
    popd
    pause
    exit /b %errorlevel%
)

REM Provide success feedback
echo main_onnx.py ran successfully.

REM Return to the original directory
popd

pause
