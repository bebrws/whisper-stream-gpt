#!/bin/env bash


# Define the file name and the URL
FILE="ggml-medium.en.bin"
URL="https://huggingface.co/ggerganov/whisper.cpp/blob/main/ggml-medium.en.bin"

# Check if the file exists
if [ ! -f "$FILE" ]; then
  echo "File $FILE does not exist. Downloading..."
  wget $URL
  
  # Check if the download was successful
  if [ $? -eq 0 ]; then
    echo "Download completed successfully."
  else
    echo "Failed to download the file."
  fi
else
  echo "File $FILE already exists. No need to download."
fi


make stream
