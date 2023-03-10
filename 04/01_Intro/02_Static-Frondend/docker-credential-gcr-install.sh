#!/usr/bin/bash
VERSION=2.1.6
OS=windows  # or "darwin" for OSX, "windows" for Windows.
ARCH=386  # or "386" for 32-bit OSs, "arm64" for ARM 64.

curl -fsSL "https://github.com/GoogleCloudPlatform/docker-credential-gcr/releases/download/v${VERSION}/docker-credential-gcr_${OS}_${ARCH}-${VERSION}.tar.gz" \
  --output docker-credential-gcr.tar.gz
tar xvfz docker-credential-gcr.tar.gz && chmod +x docker-credential-gcr
rm LICENSE README.md docker-credential-gcr.tar.gz
# mv docker-credential-gcr.exe ~/gcsdk/bin
# mv docker-credential-gcr.exe '/c/Program Files (x86)/Google/Cloud SDK/google-cloud-sdk/bin/'
