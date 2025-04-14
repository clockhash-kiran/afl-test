#!/bin/bash
set -e

echo "[*] Compiling target with AFL++"
make

echo "[*] Starting fuzzing"
afl-fuzz -i inputs -o out ./fuzz_target @@
