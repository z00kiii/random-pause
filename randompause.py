import os
import time
from random import randint

while True:
  work_time = randint(180, 240)
  time.sleep(work_time)
  os.system('afplay /Users/atash/projects/randompause/randompause_muffled_sound.mp3')
