#!/usr/bin/env python3
"""Actualiza version + los 2 sha256 (arm64, intel) en Casks/termpuzzle.rb.
Uso: bump-cask.py <version> <arm64_sha256> <intel_sha256>
El primer sha256 del archivo es el bloque on_arm; el segundo, on_intel."""
import re
import sys

version, arm_sha, intel_sha = sys.argv[1], sys.argv[2], sys.argv[3]
path = "Casks/termpuzzle.rb"
src = open(path).read()

new = re.sub(r'version "[^"]+"', f'version "{version}"', src, count=1)
shas = [arm_sha, intel_sha]
new = re.sub(r'sha256 "[0-9a-f]{64}"', lambda m: f'sha256 "{shas.pop(0)}"', new, count=2)

if new == src:
    print("sin cambios")
    sys.exit(0)
open(path, "w").write(new)
print(f"cask actualizado a {version}")
