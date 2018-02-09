#!/usr/bin/python

from subprocess import check_output
import os.path
import sys

def stash_files(outpath):
    gitout = check_output(['git', 'ls-files', '--other', '--exclude-standard'])
    paths = gitout.split()
    outfile = open(outpath, 'w')

    for path in paths:
        if path == outpath:
            continue

        with open(path, 'r') as f:
            contents = f.read().splitlines()
            linecount = len(contents)
            outfile.write(str(linecount) + ' ' + path + '\n')
            outfile.write('\n'.join(contents) + '\n')

    outfile.close()

def pop_files(inpath):
    contents = []
    with open(inpath, 'r') as f:
        contents = f.readlines()

    next_count = 0
    for i in range(len(contents)):
        if i == next_count:
            if i != 0:
                outfile.close()

            next_count += int(contents[i].split()[0]) + 1
            outfile = open(contents[i].split()[1], 'w')
            continue

        outfile.write(contents[i])

    outfile.close()

def usage():
    print 'Usage: ' + sys.argv[0] + ' [--stash|--pop] <file>'

def main():
    if len(sys.argv) != 3:
        usage()
        exit(0)

    if sys.argv[1] == '--stash':
        stash_files(sys.argv[2])
    elif sys.argv[1] == '--pop':
        pop_files(sys.argv[2])
    else:
        usage()
        exit(1)

if __name__ == "__main__":
    main()
