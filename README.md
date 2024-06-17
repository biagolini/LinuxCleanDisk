# Disk Fill Script

## Overview

This script is designed to fill up disk space for testing purposes by duplicating a specified image file repeatedly until the disk space is nearly full. It is useful in scenarios where you need to test disk full conditions or to ensure that no recoverable space is left for security reasons, such as before disposing of a storage device.

## Use Case

This script is particularly useful in environments where it is necessary to ensure that all previously available space is overwritten with benign data, effectively making any residual data unrecoverable. Common use cases include:
- Preparing a system for secure disposal or transfer to another party.
- Testing software and system behavior under disk full conditions.

## Prerequisites

- A Unix-like operating system with a Bash shell.
- Sufficient permissions to execute scripts and write files in the target directory.

## How to Use

1. **Prepare the Image**: Place an image file named `empty_image.jpg` in the same directory as the script. This image will be copied to fill the disk.

2. **Set Permissions**: Make the script executable by running:
```bash
chmod +x fill_disk.sh
```

3. Run the Script: Execute the script by running:
```bash
./fill_disk.sh
```

The script will stop running once the disk space is almost full, specifically when less than 100MB of free space remains. This threshold can be adjusted in the script as needed.

## Caution
Running this script will significantly fill up your disk space and may cause system instability if not monitored. It is recommended to keep an eye on the disk usage and stop the script manually if needed before the disk is completely full.
