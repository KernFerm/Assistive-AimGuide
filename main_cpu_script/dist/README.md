# Assistive Aim-Guide 🎯

**Assistive Aim-Guide** is a real-time **auto-aiming assist tool** designed specifically to help gamers with **physical disabilities**. It leverages AI models, real-time camera integration, and automated mouse movements to optimize target acquisition and gameplay precision.

---

## 📋 Features

- **Auto-Aim Integration**: Automates precise aiming to reduce physical strain, helping people with physical disabilities (motor skills).
- **Customizable Masking**: Mask parts of the screen to minimize distractions.
- **Multi-Model Support**: Compatible with **PyTorch** models only.
- **Dynamic CPS Logging**: Logs and monitors corrections per second (CPS).
- **Visual Feedback**: Optional display of target processing and visuals.
- **Enhanced BetterCam**: Optimized screen capture for smooth performance.
- **Headshot Mode**: Enables slight upward adjustments for better accuracy.
- **Accessibility Focus**: Reduces motor strain for individuals with physical challenges.
- **Arduino Leonardo** - Integrates with Arduino for additional customization and hardware-based controls for physical challenges.


## Discord Support
Join our Discord channel **Assistive AimGuide** for assistance, support, or to share your experience.  

- **[Discord Link](https://discord.gg/5yn9ygZgfM)**
---
## 🚨 Disclaimer

This tool is developed as an **accessibility aid** for gamers with disabilities to help them compete more effectively in games.  
We **advocate for fair play** and accessibility in gaming and do **not endorse cheating** or the promotion of cheating in any form.  
Use of this tool in online games is at your own risk. Please consult with game developers if unsure about compatibility with game policies.  
This tool should be used primarily as an assistive device in environments that support inclusivity.

---

## 🛠 Requirements

Ensure you have **Python 3.11.6** installed.

### Installation via `requirements.txt`:
Run the following command to install all required libraries:
```
pip install -r requirements.txt
```

## 🚀 How to Download and Run

1. Download the Project Files:

- Visit the project page on GitHub:
https://github.com/YourUsername/Assistive-Aim-Guide

- Click on the green "`Code`" button.
- Select "`Download ZIP`".
- Extract the downloaded `ZIP` file to a folder on your computer.
   - prefer to your `Desktop`

2. **Install Python 3.11.6**:

- Download `Python 3.11.6` from the official website:
https://www.python.org/downloads/release/python-3116/

- During installation, check "`Add Python to PATH`".

3. **Install Dependencies**: Open a terminal or command prompt in the extracted folder and run:

```
pip install -r requirements.txt
```

4. **Configure the Tool**:

- Open the `config.py` file in a text editor.

- Customize settings such as model path, device type, and activation keys

```
# Portion of screen to be captured (This forms a square/rectangle around the center of screen)
screenShotHeight = 320
screenShotWidth = 320

# Use "left" or "right" for the mask side depending on where the interfering object is, useful for 3rd player models or large guns
useMask = True
maskSide = "left"
maskWidth = 110
maskHeight = 230

# Autoaim mouse movement amplifier
aaMovementAmp = 1.1

# Person Class Confidence
confidence = 0.75

# What key to press to quit and shutdown the autoaim
aaQuitKey = "8"

# What key to press to toggle the autoaim
aaActivateKey = "CapsLock"

# If you want to aim slightly upwards towards the head
headshot_mode = True

# Displays the Corrections per second in the terminal
cpsDisplay = False

# Set to True if you want to get the visuals
visuals = False

# Smarter selection of people
centerOfScreen = True

# Choose your model configuration here:
# model_path = 'v5.engine'  # For TensorRT engine model
# model_path = 'v5.onnx'    # For ONNX model
model_path = 'v5.pt'  # For PyTorch model on CPU

# Device can be 'cpu' or 'cuda' (for GPU)
device = 'cpu'

# Use FP16 for faster inference on supported GPUs (not relevant for CPU, should be set to False)
fp16 = False
```

5. **Run the Application**: 
- Launch the tool using the following command:

```
python main.py
```

## 📸 How It Works

1. **Camera Initialization**:
- `Utilizes BetterCam for real-time screen capture with adjustable FPS`.

2. **AI Model Inference**:
-  `Processes frames using the AI model`.
- `Filters detections based on confidence thresholds`.

3. **Mouse Automation**:
- `Automatically adjusts the mouse cursor to aim at detected targets`.
- `Reduces physical effort for players`.

4. **Accessibility**:
- `Designed to assist individuals with motor challenges`.
- `Helps improve accuracy and reduce physical strain during gaming`.

## 🖥 Supported AI Models
The tool supports the following model formats:

`.pt`: PyTorch models.

## ⚙ Configuration Options

The following options are available in the `config.py` file. This configuration is optimized for **PyTorch** models only.

| **Setting**        | **Description**                               | **Default Value** |
|---------------------|-----------------------------------------------|-------------------|
| `model_path`       | Path to the AI model (`.pt` format only)      | `'v5.pt'`        |
| `device`           | Device for inference (`cpu` or `cuda`)        | `'cpu'`          |
| `confidence`       | Confidence threshold for detections           | `0.75`           |
| `useMask`          | Mask part of the screen to focus on targets   | `True`           |
| `maskSide`         | Mask side (`left` or `right`)                 | `'left'`         |
| `aaQuitKey`        | Quit key for auto-aim                         | `"8"`            |
| `aaActivateKey`    | Toggle key for auto-aim                       | `"CapsLock"`     |
| `headshot_mode`    | Aim slightly upwards for headshots            | `True`           |
| `visuals`          | Show frame visuals                            | `False`          |
----
----
---
---
---



---
# Created with ❤️ by Bubbles The Dev
---