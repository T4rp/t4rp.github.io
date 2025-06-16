from typing import Counter
import jinja2
import markdown
import os
from os import path

import shutil

CONTENT_DIR = path.join(".", "content")
DEST_DIR = path.join(".", "dest")

env = jinja2.Environment(loader=jinja2.FileSystemLoader("./templates"))

template = env.get_template("template.html")

def render_content(item):
  item_path = path.join(CONTENT_DIR, item)
  if not path.isfile(item_path):
    return

  split_path = path.splitext(item)

  with open(item_path) as f:
    content = f.read()

    if split_path[1] == ".md":
      content = markdown.markdown(content)

    rendered_content = template.render(content=content)

  dest_path = path.join(DEST_DIR, split_path[0] + ".html")
  with open(dest_path, "w") as f:
    f.write(rendered_content)

os.makedirs(DEST_DIR)

for item in os.listdir(CONTENT_DIR):
  render_content(item)

shutil.copytree(path.join(".", "styles"), DEST_DIR, dirs_exist_ok=True)
shutil.copytree(path.join(".", "scripts"), DEST_DIR, dirs_exist_ok=True)
