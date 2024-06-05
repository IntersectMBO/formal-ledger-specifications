import sys

def write_file(filename, lines):
    with open(filename, 'w') as file:
        for line in lines:
            file.write(line + '\n')

def read_file(filename):
    with open(filename, 'r') as file:
        return file.readlines()

### General Helper functions #########################################################################

def remove_prefixes(s, l):
    """
    Repeatedly remove any prefix from the string `s` if that prefix appears in the list of strings `l`.
    """
    for prefix in l:
        if s.startswith(prefix):
            s = remove_prefixes(s[len(prefix):], l)
    return s

def remove_suffixes(s, l):
    """
    Repeatedly remove any suffix from the string `s` if that suffix appears in the list of strings `l`.
    """
    for suffix in l:
        if s.endswith(suffix):
            s = remove_suffixes(s[:-len(suffix)], l)
    return s

def strip_prefixes(ls1, ls2):
    """
    Remove any prefix from the first string in `ls1` if that prefix is an element of `ls2`.
    If the first element of `ls1` is fully removed, then proceed to the next element, and so on.
    EXAMPLE Inputs: ls1 = ["prefix_match", "abc", "def"]
                    ls2 = ["prefix", "_", "ab"]
                    print(strip_prefixes(ls1, ls2))  
            Output: ['match', 'abc', 'def']
    """
    while ls1 and ls1[0]:  # While there's a non-empty string in the first position
        new_first = remove_prefixes(ls1[0], ls2)
        if new_first == ls1[0]:  # No more prefixes to remove
            break
        ls1[0] = new_first
        if not ls1[0]:  # If the first element becomes empty, remove it
            ls1.pop(0)
    return ls1

def strip_suffixes(ls1, ls2):
    """
    Remove any suffix from the last string in `ls1` if that suffix is an element of `ls2`.  
    If the last element of `ls1` is fully removed, repeat this suffix removal procedure 
    on the previous (new last) element of `ls1`, and so on.
    EXAMPLE Inputs: ls1 = ["abc", "def", "suffix_match"]
                    ls2 = ["suffix", "match", "def"]
                    print(strip_suffixes(ls1, ls2))
            Output: ['abc', 'def', 'suffix_']
    """
    while ls1 and ls1[-1]:  # While there's a non-empty string in the last position
        new_last = remove_suffixes(ls1[-1], ls2)
        if new_last == ls1[-1]:  # No more suffixes to remove
            break
        ls1[-1] = new_last
        if not ls1[-1]:  # If the last element becomes empty, remove it
            ls1.pop()
    return ls1

def get_until_match_from(ls1, ls2):
    """
    Return a tuple of two lists:
    1. ls1[:n] where `ls1[n]` is the first element in `ls1` containing any string 
       from `ls2` as a substring.
    2. ls1[n:], the remaining elements of `ls1`, the first of which has an element 
       of ls2 as a substring.

    Parameters:
    ls1 (list of str): list of strings, the first `n-1` of which will be returned, 
                       followed by the remaining elements of ls1, which will be 
                       returned in a second, separate list.
    ls2 (list of str): list of "halting" substrings
    """
    if not ls1:
        return ls1, []

    for index, element in enumerate(ls1):
        if any(substring in element for substring in ls2):
            return [line.strip() for line in ls1[:index]], [line.strip() for line in ls1[index:]]
    return ls1, []  # no match found

def get_back_until_match_from(ls1, ls2):
    """
    Return a tuple of two lists:
    1. ls1[:n] where `ls1[n]` is the last element in `ls1` containing any string 
       from `ls2` as a substring.
    2. ls1[n:], the remaining elements of `ls1`, the first of which has an element 
       of ls2 as a substring.

    Parameters:
    ls1 (list of str): List of strings to be split.
    ls2 (list of str): List of substrings to search for in ls1.

    Returns:
    pair of lists of strings:
    - The first returned list has elements from ls1 up to and including the last match.
    - The second has the remaining elements, after the last match, from ls1.
    """
    last_match_index = -1

    # Iterate over the indices and elements of ls1
    for index, element in enumerate(ls1):
        if any(substring in element for substring in ls2):
            last_match_index = index

    # If a match is found, split the list accordingly
    if last_match_index != -1:
        return ls1[:last_match_index + 1], ls1[last_match_index + 1:]

    return [], ls1 # no match found


### Special Helper functions #########################################################################


def inline_text(element):
    return ["\\begin{code}[inline]\\text{"] + element + ["}\\end{code}\\\\%"]

def make_array(ls):
    return ["%START VEC%", "~\\(\\left(\\begin{array}{c}%"] + ls + ["\\end{array}\\right)\\)~", "%END VEC%"]

def should_be_inlined(str):
    
    inline_patterns = ["\\AgdaOperator{\AgdaFunction{⊢}}", "\\AgdaOperator{\\AgdaDatatype{⊢}}", "\\AgdaOperator{\\AgdaDatatype{⇀⦇}}\\AgdaSpace{}%"]
    return any(substr in str for substr in inline_patterns) and not any(substr in str for substr in deduction)

def format_vector(vector_block):
    unwanted_suffixes = ["\\AgdaSpace{}", "%"]
    def format_vector_tr(vector_block, acc):
        if not vector_block:
            return acc
        next_element, vector_block = get_until_match_from(vector_block, ["AgdaInductiveConstructor{,}"])
        next = strip_suffixes(next_element, unwanted_suffixes)
        return format_vector_tr(vector_block[1:], acc + inline_text(next))
    return format_vector_tr(vector_block, [])


deduction = ["AgdaFunction{───────────────────────────────"]
extra_skip = ["[\\AgdaEmptyExtraSkip]"]
newline = ["\\\\"]

begin_code = ["\\begin{code}%"]
begin_code_inline = ["\\begin{code}[inline]%"]
end_code = ["\\end{code}%"]

# N.B. It's important that left_bracket includes the trailing curly brace, to avoid matching
# constructors, while right_bracket does not include the trailing curly brace, so that the 
# latter will match all varieties of closing brackets.
left_bracket = "AgdaInductiveConstructor{⟦}"
right_bracket = "AgdaInductiveConstructor{⟧"

def inline(l):
    #print("l: ", l)
    if not l:
        return []
    return begin_code_inline + l + end_code

def append_begin(l):
    if not l:
        return []
    if l[-1].endswith("\\begin{code}"):
        return l
    return l + begin_code

def add_begin(l):
    if not l:
        return []
    if l[-1].startswith("\\begin{code}"):
        return l
    return begin_code + l

def add_end(l):
    if not l:
        return []
    if l[-1].endswith("\\end{code}%"):
        return l
    return l + end_code


def safe_add(l1, l2):
    if not l1:
        return l2
    if not l2:
        return l1
    if (not (l1[-1].endswith("\\end{code}%") or l1[-1].endswith("%END VEC%"))) and l2[0].startswith("\\begin{code}"):
        return add_end(l1) + l2
    if (l1[-1].endswith("\\end{code}%") or l1[-1].endswith("%END VEC%")) and not l2[0].startswith("\\begin{code}"):
        return l1 + add_begin(l2)
    return l1 + l2            


def process_vector(lines):
    def get_vector_block(lines, acc):
        if not lines:
            return acc, []
        if left_bracket in lines[0]:  # this must be an inner vector
            vec_block, nextlines = process_vector(lines[1:])
            return get_vector_block(nextlines, acc + vec_block)
        if right_bracket in lines[0]:
            return acc, lines[1:]
        else:
            return get_vector_block(lines[1:], acc + [lines[0]])
    vec_block, nextlines = get_vector_block(lines, [])
    return format_vector(vec_block), nextlines



### Main Agda-generated LaTeX file post-processing function ########################################

def process_lines(lines):

    inline_halters = deduction + extra_skip + newline + [left_bracket, "\\end{code}", "\\AgdaFunction{∙}"]

    unwanted = ["%"] + newline + extra_skip

    def process_lines_tr(ls, acc):
        if not ls:
            return acc
        aac, bb = get_until_match_from(ls, ["AgdaInductiveConstructor{⟦}"])
        if not bb:
            return safe_add(acc, aac)

        aa , c = get_back_until_match_from(aac, inline_halters)
        aa = strip_prefixes(strip_suffixes(aa, unwanted), unwanted)
        c = strip_prefixes(c, unwanted)
        vec_block, newls = process_vector(bb[1:])
        acc = safe_add(acc, add_end(aa)) + inline(c) + make_array(vec_block)

        if should_be_inlined(newls[0]):
            inl, newls = get_until_match_from(newls, inline_halters)
            acc = acc + inline(inl)
        return process_lines_tr(newls, acc)

    return process_lines_tr(lines, [])

def main():
    if len(sys.argv) != 3:
        print('Usage: python agda2vec.py /path/to/inputFile.tex /path/to/outputFile.tex')
        sys.exit(1)
    
    in_file_path = sys.argv[1]
    out_file_path = sys.argv[2]

    lines = read_file(in_file_path)
    processed_lines = process_lines(lines)
    write_file(out_file_path, processed_lines)

if __name__ == '__main__':
    main()
