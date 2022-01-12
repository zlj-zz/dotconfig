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


def main():
    while True:
        choice = input("1-encrpyt, 2-decode; input:").strip()
        if choice in ['1', '2']:
            break
        print('error input, try again.')

    code = input("input your code:")

    if choice == '1':
        print(encrpyt(code))

    elif choice == '2':
        print(decode(code))

if __name__ == "__main__":
    main()
