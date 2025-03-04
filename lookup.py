#!/bin/env python3

from requests import get
from time import sleep

items = []

with open('ids.txt') as f:
    for i in f:
        items.append(i.strip())


for i in items:
    r = get(f'https://www.wowhead.com/wotlk/item={i}')

    if r.ok:
        with open(f'items/{i}', 'w') as f:
            f.write(r.text)
    sleep(1)