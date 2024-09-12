#!/bin/bash

current_dir=$(pwd)
cd "$current_dir/mediapipe/tasks/"
bazel build web/vision:vision_bundle_mjs 
if [ ! -d "$current_dir/dist" ]; then
    mkdir "$current_dir/dist"
fi

rm -f "$current_dir/dist/vision_bundle.js"
cp "$current_dir/bazel-bin/mediapipe/tasks/web/vision/vision_bundle_mjs.js" "$current_dir/dist/vision_bundle.js"
