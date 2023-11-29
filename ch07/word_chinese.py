#!/usr/bin/env python
# -*- coding: utf-8 -*-
# ************************************************************************ 
# * 
# * @file:word_chinese.py 
# * @author:nanjingrjb@gmail.com 
# * @date:2023-11-29 10:39 
# * @version 1.0  
# * @description: Python Script 
# * @Copyright (c)  all right reserved 
# * 
#************************************************************************* 

#!/usr/bin/env python3
import argparse
import unicodedata
import sys


def make_parser():
    parser = argparse.ArgumentParser(
        description=('This script strips wide characters from FILE or stdin '
                     'if one is not provided, and outputs to stdout.'))
    parser.add_argument('filename', metavar='FILE', nargs='?')
    return parser


def stripwchar(istream, ostream):
    for line in istream:
        cbuf = []
        for c in line:
            if unicodedata.east_asian_width(c) in 'FW':
                cbuf.append(' ')
            else:
                cbuf.append(c)
        ostream.write(''.join(cbuf))

def wcChinese(istream, ostream):
    cbuf = []
    dic={}
    cnt=0
    for line in istream:
        for c in line:
            if unicodedata.east_asian_width(c) in 'FW':
                if c not in dic.keys():
                    dic[c]=1
                else:
                    dic[c]=dic[c]+1      
            else:
                pass
    for key,val in dic.items():
        ostream.write(str(key)+"\t\t"+str(val)+"\n")

def main():
    args = make_parser().parse_args()
    try:
        if args.filename is None:
            stripwchar(sys.stdin, sys.stdout)
        else:
            with open(args.filename, encoding='utf-8') as infile:
                wcChinese(infile, sys.stdout)
    except KeyboardInterrupt:
        pass
    except BrokenPipeError:
        sys.stderr.close()


if __name__ == '__main__':
    main()


