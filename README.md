# Pneumonia Chest X-Ray Classifier

A deep learning model for classifying chest X-ray images to detect pneumonia.

## Setup Instructions

This project uses chest X-ray images from the Kaggle dataset [Chest X-Ray Images (Pneumonia)](https://www.kaggle.com/paultimothymooney/chest-xray-pneumonia).

### Prerequisites

- Python 3.6+
- pip (Python package manager)

### Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/pneumonia-classifier.git
   cd pneumonia-classifier
   ```

2. Make the setup script executable:
   ```
   #run this in the terminal
   chmod +x setup.sh
   ```

3. Run the setup script:
   ```
   ./setup.sh
   ```

The setup script will:
- Install all required Python dependencies from requirements.txt
- Download the chest X-ray pneumonia dataset
- Extract the dataset to the `data` directory
- Clean up temporary files

## Dataset Structure

After running the setup script, your `data` directory will contain:
- `train`: Training data split into pneumonia and normal categories
- `test`: Test data split into pneumonia and normal categories
- `val`: Validation data split into pneumonia and normal categories

## Model Training

[Instructions for model training will be added here]

## License

[Add your license information here] 