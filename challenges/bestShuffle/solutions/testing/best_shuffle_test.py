# Author: Adva Zair 2018.
import random
import string


def random_string(string_len, max_alphabet_len=None):
    """
    Construct a random string of length string_len. If max_alphabet_len is given, limits the
    ascii_lowercase alphabet size to this value.
    :param string_len (int): Desired string length.
    :param max_alphabet_len: Limit on the size of the ascii_lowercase alphabet.
    :return: A random string of length string_len.
    """

    return ''.join(
        random.choice(string.ascii_lowercase[:max_alphabet_len])
        for _ in range(string_len)
    )


def get_random_strings(number_of_strings=10, string_length_range=(1, 5), max_alphabet_len=None):
    """
    Returns a list of number_of_strings random strings. The length of the strings randomly range
    between string_length_range.
    :param number_of_strings: Number of random strings to produce.
    :param string_length_range: Range of string lengths.
    :param max_alphabet_len: Limit on the size of the ascii_lowercase alphabet.
    :return: A list of random strings.
    """

    min_string_length, max_string_length = string_length_range

    string_legnths = [
        random.randint(min_string_length, max_string_length)
        for _ in range(number_of_strings)
    ]

    return [random_string(string_len, max_alphabet_len) for string_len in string_legnths]
