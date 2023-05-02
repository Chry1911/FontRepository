#!/bin/bash

# Set the name of the font file and GitHub repository
FONT_NAME="Arial.ttf"
GITHUB_REPO="Chry1911/FontRepository"

# Download the font file from GitHub
curl -L -o /tmp/$FONT_NAME https://raw.githubusercontent.com/$GITHUB_REPO/main/$FONT_NAME

# Move the font file to /usr/share/fonts
sudo mv /tmp/$FONT_NAME /usr/share/fonts/

# Set the ownership and permissions of the font file
sudo chown root:root /usr/share/fonts/$FONT_NAME
sudo chmod 644 /usr/share/fonts/$FONT_NAME