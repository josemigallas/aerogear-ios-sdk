#!/bin/bash
# Prepare for release
MODULES="core auth push"
SDK_VERSION=`cat VERSION|tr -d '[:space:]'`

echo "Update SDK Version to $SDK_VERSION"
sed -i.bak -E "s/DEVELOPMENT/${SDK_VERSION}/" ./modules/core/data/AgsMetadata.swift
sed -i.bak -E "s/\.version([ ]*)=([ ]*)(.*)/\.version\1=\2'$SDK_VERSION'/g" ./*.podspec

echo "SDK version is updated to $SDK_VERSION"

echo "Push release tags to upstream"
git add -A && git commit -m "Release $SDK_VERSION"
git tag $SDK_VERSION
git push upstream $SDK_VERSION