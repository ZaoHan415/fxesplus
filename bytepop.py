import binascii

memory = open("dumps/segment0.bin", "rb").read() + open("dumps/segment1.bin", "rb").read()

def next_instruction(address):
    global memory

    # TODO more two-word instructions
    new_address = address + 2

    instruction = memory[address:address+2]

    if instruction[0] & 0x1f == 0x8 and ((instruction[1]&0xF0 == 0xA0 and instruction[1]&1 == 0) or instruction[1]&0xF0 == 0x90):
        new_address += 2

    elif instruction[0] == 0x12 and (instruction[1]&0xF0 == 0x90 and instruction[1]&1 == 0):
        new_address += 2

    elif instruction[0] == 0x10 and instruction[1]&0xF0 == 0x90:
        new_address += 2
 
    return new_address

def num_bytes(address):
    global memory

    instruction = memory[address:address+2]
    print("%05x: %02x%02x" % (address, instruction[0], instruction[1]))


    if instruction in [b"\x1f\xfe", b"\xce\xf8", b"\x8e\xf2"]:
        return 0

    elif instruction[0] in [0x00, 0x01] and instruction[1] in [0xF0, 0xF1]:
        immediate = memory[address+2:address+4]
        print("Branch")
        return num_bytes(((instruction[1]&0x1)<<16) | immediate[0] | (immediate[1]<<8))

    elif instruction[1] == 0xE1:
        immediate = instruction[0]
        print("ADD SP, x")

        if immediate > 0x7f:
            immediate -= 256

        return num_bytes(next_instruction(address)) + immediate

    else:
        return num_bytes(next_instruction(address))

print(num_bytes(0x10060))
