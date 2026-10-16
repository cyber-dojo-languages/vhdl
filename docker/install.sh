#!/bin/sh -eu

# Records the VHDL this image holds, in the shape every image shares. Its
# version is ghdl's: that is the simulator which implements it here. The
# installed simulator is asked, so the version is one the image can run rather
# than one written down when someone last edited this file. The first line of
# ghdl --version reads "GHDL 4.1.0 (Ubuntu ...) [Dunoon edition]".
readonly LANGUAGE_VERSION=$(ghdl --version | head -1 | cut -d' ' -f2)

if [ -z "${LANGUAGE_VERSION}" ]; then
  echo 'Could not read a version from ghdl --version' >&2
  exit 1
fi

cat > /versions.json <<EOF
{
  "language": {
    "name": "VHDL",
    "version": "${LANGUAGE_VERSION}"
  },
  "test_frameworks": []
}
EOF
