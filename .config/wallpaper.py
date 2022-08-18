# A custom script that automatically reads images from my backgrounds directory
# and combines them for a custom wallpaper.
#
# @author patriacaelum

import os
import random
import subprocess
import time

from PIL import Image, ImageOps

while True:
    horizontal_dir = "/home/augh/Pictures/backgrounds/horizontal/"
    vertical_dir = "/home/augh/Pictures/backgrounds/vertical/"

    horizontal_paths = os.listdir(horizontal_dir)
    vertical_paths = os.listdir(vertical_dir)

    primary_path = os.path.join(horizontal_dir, random.choice(horizontal_paths))
    secondary_path = os.path.join(vertical_dir, random.choice(vertical_paths))
    temp_path = "/home/augh/.wallpaper.jpg"

    primary_image = Image.open(primary_path)
    primary_image = ImageOps.fit(primary_image, size=(2560, 1440))

    secondary_image = Image.open(secondary_path)
    secondary_image = ImageOps.fit(secondary_image, size=(1200, 1920))

    full_image = Image.new("RGB", size=(2560 + 1200, 1920))
    full_image.paste(primary_image, box=(0, 250))
    full_image.paste(secondary_image, box=(2560, 0))

    full_image.save(temp_path)

    primary_image.close()
    secondary_image.close()

    subprocess.run(["feh", "--no-xinerama", "--bg-fill", temp_path])

    time.sleep(3600)
