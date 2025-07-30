#!/bin/bash

VOICE=${VOICE:-voices/en_GB-alba-medium.onnx}

[[ -z "$1" ]] && exit
mkdir -p phrases
filename=${1// /_}
filename=${filename,,}
filename=${filename//./}
echo "$1" | piper -m $VOICE -f "phrases/${filename}.wav"
