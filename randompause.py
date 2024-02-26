import subprocess
import time
from random import randint
import os

script_dir = os.path.dirname(os.path.abspath(__file__))
sound_file_path = os.path.join(script_dir, 'randompause_muffled_sound.mp3')

while True:
    work_time = randint(180, 240)
    time.sleep(work_time)

    subprocess.call(['afplay', sound_file_path])