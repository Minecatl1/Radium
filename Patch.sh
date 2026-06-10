#!/bin/bash
PATCH_URL="https://cdn.recroomarchive.org/radium/game-client/production/toukeh24kq6w2v4lndyc4z0pblvfyj75/windows/patch.zip"
BEP_PLUGIN="BepInEx/plugins"
curl -L -o patch.zip "$PATCH_URL"

unzip -o patch.zip

mkdir -p "$BEP_PLUGIN"
mv -f "Radeon.Core.BasePatch.dll" "$BEP_PLUGIN/Radeon.Core.BasePatch.dll"

if [ -f patch.zip ]; then rm -f patch.zip; fi

echo "Done!"
