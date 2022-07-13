'''
Take the following IPv4 address: 128.32.10.1

This address has 4 octets where each octet is a single byte (or 8 bits).

1st octet has the binary representation: 12810000000
2nd octet has the binary representation: 3200100000
3rd octet has the binary representation: 1000001010
4th octet has the binary representation: 100000001
So 128.32.10.1 == 10000000.00100000.00001010.00000001

Because the above IP address has 32 bits, we can represent it as the unsigned 32 bit number: 2149583361

Complete the function that takes an unsigned 32 bit number and returns a string representation of its IPv4 address.

Examples
2149583361 ==> "128.32.10.1"
32         ==> "0.0.0.32"
0          ==> "0.0.0.0"


'''


def int32_to_ip(int32):
    help_str = ""
    help_mas = []
    str0 = "{:032b}".format(int32)
    for i in range(32):
        if (len(help_str) == 8):
            help_mas.append(str(int(help_str,2)))
            help_str = ""
            help_str += (str0[i])
        else:
            help_str += (str0[i])  
    help_mas.append(str(int(help_str,2)))    
    return ".".join(help_mas);
