# Author: Adva Zair 2018.
import random
import re

from challenges.bestShuffle.solutions.testing.best_shuffle_test import get_random_strings


def add_letter_to_permutation(permutation, letter_string):
    """
    Compose a new permutation string of size len(permutation) + len(letter_string) by alternately
    choose the next letter out of permutation and letter_string.
    If len(permutation) < len(letter_string) then add the remaining of letter_string at the
    beginning of the new permutation.
    If len(permutation) > len(letter_string) them add the remaining of permutation at the end of the
    new permutation string.
    :param permutation (str): The permutation string to add letter_string to.
    :param letter_string (str): The letter_string to add to composed a new permutation string.
    :return: The combined permutation string.
    """

    if len(letter_string) == 1:
        return permutation + letter_string

    new_permutation = ''

    i = 0
    while permutation and letter_string:

        if i % 2 == 0:
            new_permutation += letter_string[0]
            letter_string = letter_string[1:]
        else:
            new_permutation += permutation[0]
            permutation = permutation[1:]

        i += 1

    # Add the remaining to the beginning so that the next letter will be alternate with them.
    if letter_string:
        new_permutation = letter_string + new_permutation

    # Add the remaining permutation to the new permutation.
    if permutation:
        new_permutation = new_permutation + permutation

    return new_permutation


def best_shuffle(input_string, random_shuffle=False):
    """
    Shuffle the characters of input_string so that the least number of letters are in the same
    position as in the original string. For that purpose, constructs a permutation based on letters
    occurrences in the input string. Starting with the least occurring letters, the permutation is
    an alternating sequence of the previous permutation string and the next letter.
    Then the permutation string is translated to indices permutation and the shuffled string is
    constructed.
    A tuple of the
         <input_string, new_shuffled_string, score(input_string, new_shuffled_string)>
    is returned, where the score is the sum of letters that didn't change position in the shuffled
    string.
    :param input_string(str): The input string to shuffle.
    :return: The input string (str), the shuffled string (str) and the score (int) of this shuffle.
    """

    sorted_letter_count = get_sorted_letter_count(input_string)

    if len(sorted_letter_count) <= 1:
        return input_string, input_string, len(input_string)

    if random_shuffle:
        sorted_letter_count = shuffle_same_count_letters(sorted_letter_count)

    letter, letter_count = sorted_letter_count[0]
    permutation = letter * letter_count

    for letter, letter_count in sorted_letter_count[1:]:

        permutation = add_letter_to_permutation(permutation, letter*letter_count)



    return permute_string(input_string, permutation)


def get_sorted_letter_count(input_string):
    """
    Returns a sorted list of tuples (l, # l in input_string) for every letter in input_string.
    :param input_string (str): Input string.
    :return: A sorted list of tuples (l, # l in input_string) for every letter in input_string.
    """
    letter_count = {letter: input_string.count(letter) for letter in set(input_string)}
    return sorted(letter_count.items(), key=lambda x: x[1])


def permute_string(input_string, permutation):
    """
    Given a permutation string, permute input_string by mapping a string to its next index
    occurrence.
    :param input_string(str): The input string to permute.
    :param permutation(str): The permutation according to which we build the new string.
    :return: Returns a tuple of the original string (str), a shuffled string (str) which is the
    result of applying the permutation of the input string, and the score of this shuffle (int).
    """

    assert len(input_string) == len(permutation)

    letter_indices = get_all_letters_indices(input_string)

    shuffled_string = [''] * len(input_string)

    for i in range(len(permutation)-1):
        letter = permutation[i]
        next_letter = permutation[i+1]
        new_ind = letter_indices[next_letter][0]
        letter_indices[next_letter] = letter_indices[next_letter][1:]
        shuffled_string[new_ind] = letter

    next_letter = permutation[0]
    new_ind = letter_indices[next_letter][0]
    shuffled_string[new_ind] = permutation[-1]

    shuffled_string = ''.join(shuffled_string)
    shuffle_score = sum([shuffled_string[i] == input_string[i] for i in range(len(input_string))])

    return input_string, shuffled_string, shuffle_score


def get_all_letters_indices(input_string):
    """
    Returns a map of letter and all its index occurrences.
    :param input_string (str): Input string.
    :return: A dict that maps letter l in input_string to a list of all indices i s.t.
    input_string[i]=l.
    """

    return {
        letter: [match.start() for match in re.finditer(letter, input_string)]
        for letter in set(input_string)
    }


def shuffle_same_count_letters(sorted_letter_count):
    """
    Shuffle (letter, count) tuples that have the same count while keeping the letter count list
    sorted.
    :param sorted_letter_count: List of tuples (l, # l in the input_string) (str, int).
    :return: Shuffled sorted letter count with tuples with the same count are shuffled.
    """

    start_idx = 0
    _, prev_letter_count = sorted_letter_count[0]

    new_sorted_letter_count = [(None, None)] * len(sorted_letter_count)

    for i, (letter, letter_count) in enumerate(sorted_letter_count):

        if letter_count > prev_letter_count or i == len(sorted_letter_count)-1:

            if i == len(sorted_letter_count)-1 and letter_count == prev_letter_count:
                i += 1

            count_index_range = list(range(start_idx, i))
            random.shuffle(count_index_range)
            new_sorted_letter_count[start_idx:i] = \
                [sorted_letter_count[j] for j in count_index_range]

            start_idx = i
            prev_letter_count = letter_count

    if new_sorted_letter_count[-1] == (None, None):
        new_sorted_letter_count[-1] = sorted_letter_count[-1]

    return new_sorted_letter_count


def main():

    # Create random strings and print best_shuffle output.
    random_strings = get_random_strings(
        number_of_strings=10,
        string_length_range=(3, 8),
        max_alphabet_len=4,
    )

    print('Test Deterministic:')
    for random_str in random_strings:
        print(*best_shuffle(random_str))

    print()
    # Test random shuffle.
    input_string = random_strings[0]
    print('Test Shuffle:')
    repeat = 5
    for _ in range(repeat):
        print(*best_shuffle(input_string, random_shuffle=True))



if __name__ == '__main__':
    main()
