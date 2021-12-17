# encrypt and decode


def encrpyt(passed):
    new_code = ""
    for idx, b in enumerate(passed):
        new_code += chr(ord(b) + (idx % 10))

    return new_code[::-1]


def decode(passed):
    new_code = ""
    for idx, b in enumerate(passed[::-1]):
        new_code += chr(ord(b) - (idx % 10))

    return new_code


if __name__ == "__main__":
    pass
