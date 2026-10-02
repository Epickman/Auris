# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is **not a code project**. It is a 3D product render output directory containing PNG image sequences for an animated product video of a gaming headset.

- **Product:** Auris — a wireless over-ear gaming headset with an RGB LED ring accent
- **Brand:** VonharV
- **Rendered:** February 23, 2026

## Structure

Three camera takes, each a sequence of numbered PNG frames:

| Folder | Frames | Description |
|--------|--------|-------------|
| `toma1/` | 113 frames (`auris0000–0112.png`) | Camera fly-in from above, black background, green LED |
| `toma2/` | 177 frames (`auris0000–0176.png`) | Hero orbit shot, white↔black background transition, LED cycles blue→cyan→gold→orange |
| `toma3/` | 151 frames (`auris0000–0150.png`) | Symmetrical front turntable, black background, green/cyan LED |

File naming convention: `auris####.png` (zero-padded 4-digit frame number).

## Working with the Frames

To compile the sequences into video (e.g., with FFmpeg):

```bash
# Example: compile toma2 at 24fps into an MP4
ffmpeg -framerate 24 -i toma2/auris%04d.png -c:v libx264 -pix_fmt yuv420p toma2.mp4
```

## What Is Not Present

- 3D source files (`.blend`, `.c4d`, `.ma`, `.fbx`, etc.)
- Audio files
- Assembled video outputs (only raw frame sequences)
- Project metadata or configuration
