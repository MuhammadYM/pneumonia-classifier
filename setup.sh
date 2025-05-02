#!/bin/bash

echo "Setting up pneumonia classifier project..."

# Create data directory if it doesn't exist
mkdir -p data

# Download the dataset
echo "Downloading chest X-ray pneumonia dataset..."
curl -L -o data/chest-xray-pneumonia.zip \
  https://www.kaggle.com/api/v1/datasets/download/paultimothymooney/chest-xray-pneumonia

# Extract the dataset
echo "Extracting dataset..."
unzip -q data/chest-xray-pneumonia.zip -d data/

# Clean up - handle nested chest_xray/chest_xray folder structure
echo "Cleaning up..."
if [ -d "data/chest_xray/chest_xray" ]; then
  # Handle the nested chest_xray/chest_xray case
  mv data/chest_xray/chest_xray/* data/
  rm -rf data/chest_xray
else
  # Handle the original expected structure
  mv data/chest_xray/* data/
  rmdir data/chest_xray
fi

rm -rf data/__MACOSX
rm data/chest-xray-pneumonia.zip

echo "Setup complete! Dataset is ready in the data directory."
