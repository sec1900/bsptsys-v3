import base64
import argparse
import sys


def toBase64(text):
    bs = base64.b64encode(text.encode())
    return bs.decode()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('-t', '--text', type=str)
    args = parser.parse_args()
    print(toBase64(args.text))