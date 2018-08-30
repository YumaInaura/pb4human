#!/usr/bin/env bash -eu

readonly home_dir=$HOME/.pb4human
readonly lib_dir=$home_dir/lib

mkdir -p "$home_dir"

rm -rf "$home_dir/lib"
cp -rf ./lib $home_dir

echo ===========================================
echo "Installed ( $lib_dir )"
echo ===========================================
ls -la "$lib_dir"

echo ===========================================
echo Add build source line in your profile file
echo ===========================================
echo "# Generated by pb4human START #"
cat ./build_source | grep -v "echo" | grep -v "which"
echo "# Generated by pb4human END #"

