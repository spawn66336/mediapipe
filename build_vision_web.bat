@echo off
cd /d "%~dp0mediapipe\tasks\"
bazel build web/vision:vision_bundle_mjs
cd /d "%~dp0" 
IF NOT EXIST dist (
    mkdir dist
)
del dist\vision_bundle.js
copy bazel-bin\mediapipe\tasks\web\vision\vision_bundle_mjs.js dist\vision_bundle.js