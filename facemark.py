#!/usr/bin/env python

import collections

FACES = collections.OrderedDict((
    ('angry',  'ಠ▃ಠ'),
    ('chabudai',  '(╯°□°)╯︵ ┻━┻'),
    ('disapproval',  'ಠ_ಠ'),
    ('lenny',  '( ͡° ͜ʖ ͡°)'),
    ('shrug',  '¯\_(ツ)_/¯'),
))

if __name__ == '__main__':
    import argparse

    parser = argparse.ArgumentParser()
    parser.add_argument('--list', action='store_true')
    parser.add_argument('face', nargs='?')
    args = parser.parse_args()

    if args.list:
        for f in FACES:
            print(f)
    elif args.face:
        print(FACES[args.face], end='')
