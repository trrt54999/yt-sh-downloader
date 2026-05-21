# 🎥 YouTube Downloader Script

[![Bash](https://img.shields.io/badge/Language-Bash-blue.svg)](https://www.gnu.org/software/bash/)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
![Status](https://img.shields.io/badge/Status-Stable-brightgreen)

A lightweight and efficient Bash script to download YouTube videos in the highest quality. The script leverages `yt-dlp` and `ffmpeg` to automatically merge high-quality video and audio streams into a single `.mp4` file.

---

## 🚀 Key Features

*   **Automatic Merging**: Uses `ffmpeg` to combine the best available video and audio streams.
*   **High Quality**: Prioritizes MP4 format for compatibility and quality.
*   **Smart Naming**: Automatically renames output files based on the original YouTube video title.
*   **Minimalist**: Fast, dependency-based, and perfect for terminal workflows.

## 🛠 Prerequisites

Ensure the following tools are installed on your system:

1.  [yt-dlp](https://github.com/yt-dlp/yt-dlp)
2.  [ffmpeg](https://ffmpeg.org/)

### Installation (Ubuntu/WSL):
```bash
sudo apt update
sudo apt install ffmpeg -y
sudo curl -L [https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp](https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp) -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp
```

## 📦 Usage

1. Make the script executable:
```bash
chmod +x downloader.sh
```

2. Run the script by providing the YouTube URL.
**Note**: You must enclose the URL in **straight double quotes** (`" "`) to prevent terminal errors (especially in Fish or Zsh due to characters like `?` or `&`).

*Example:*
```bash
./downloader.sh "https://youtu.be/dQw4w9WgXcQ"
```

> **Important:** Use only straight double quotes (`" "`) found on your keyboard. Do not use curly/smart typography quotes (like `“ ”` or `„ “`), as they will cause syntax errors in the terminal.

---

## 📝 License
This project is open-source and available under the [MIT License](LICENSE). Feel free to use, modify, and share it.
