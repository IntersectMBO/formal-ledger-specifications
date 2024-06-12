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

def get_until_match_from(ls1, ls2, to=False):
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
            if to:
                index = index + 1
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

deduction = "AgdaFunction{───────────────────────────────"
extra_skip = "[\\AgdaEmptyExtraSkip]"
newline = "\\\\"
begin_code = "\\begin{code}"
begin_code_inline = "\\begin{code}[inline]"
end_code = "\\end{code}"
entailment1 = "\\AgdaFunction{⊢}"
sts1 = "\\AgdaFunction{⇀⦇}"
entailment2 = "\\AgdaDatatype{⊢}"
sts2 = "\\AgdaDatatype{⇀⦇}"
agda_space = "\\AgdaSpace{}"
# N.B. It's important that left_bracket includes the trailing curly brace, to avoid matching
# constructors, while right_bracket does not include the trailing curly brace, so that the 
# latter will match all varieties of closing brackets.
left_bracket = "AgdaInductiveConstructor{⟦}"
right_bracket = "AgdaInductiveConstructor{⟧"

def inline_text(element):
    if not element:
        return []
    return ["\\begin{code}[inline]\\text{"] + element + ["}\\end{code}\\\\"]

def should_be_inlined(str):
    inline_patterns = [entailment1, entailment2 , sts1, sts2]
    return any(substr in str for substr in inline_patterns) and not any(substr in str for substr in [deduction])

def make_array(ls):
    if not ls:
        return []
    return ["%START VEC%", "~\\(\\left(\\begin{array}{c}%"] + ls + ["\\end{array}\\right)\\)~", "%END VEC%"]

def make_inner_array(ls):
    if not ls:
        return []
    ls = strip_suffixes(ls, ["%"])
    return ["\\left(\\begin{array}{c}"] + ls + ["\\end{array}\\right)"]

def format_vector(vector_block):
    if not vector_block:
        return []
    unwanted_suffixes = [newline, "\\<%", "%", "\\>[.][@{}l@{}]\\<[250I]"]
    element_halt = ["AgdaInductiveConstructor{,}", "\\left(\\begin{array}{c}", "\\AgdaOperator{\\AgdaField{❴}}"]
    def format_vector_tr(vector_block, acc):
        if not vector_block:
            return acc
        next_element, vector_block = get_until_match_from(vector_block, element_halt)
        # ignore "AgdaInductiveConstructor{,}" appearing inside ❴_❵; don't split vector element at that `,`
        if vector_block and "\\AgdaOperator{\\AgdaField{❴}}" in vector_block[0]:
            ne, vector_block = get_until_match_from(vector_block, ["\\AgdaOperator{\\AgdaField{❵}}"], True)
            next_element = next_element + ne

        next_element = [ remove_suffixes(x, [agda_space, "%"]) for x in next_element]
        next = strip_suffixes(next_element, unwanted_suffixes)

        next = inline_text(strip_suffixes(next, [newline]))

        if vector_block and "\\left(\\begin{array}{c}" in vector_block[0]:
            return format_vector_tr(vector_block[1:], acc + next + [vector_block[0], newline])
        return format_vector_tr(vector_block[1:], acc + next)

    return format_vector_tr(vector_block, [])

def flatten(l):
    if not l:
        return ""
    return l[0] + "~" + flatten(l[1:])

def inline(l):
    l = strip_suffixes(strip_prefixes(l, [newline]), [newline])
    if not l:
        return []
    return [begin_code_inline] + l + [end_code]

def append_begin(l):
    if not l:
        return []
    if l[-1].endswith(begin_code):
        return l
    return l + [begin_code]

def add_begin(l):
    if not l:
        return []
    if l[-1].startswith(begin_code):
        return l
    return [begin_code] + l

def add_end(l):
    if not l:
        return []
    if l[-1].endswith(end_code):
        return l
    return l + [end_code]


def safe_add(l1, l2):
    if not l1:
        return l2
    if not l2:
        return l1
    if (not (l1[-1].endswith(end_code) or l1[-1].endswith("%END VEC%"))) and l2[0].startswith(begin_code):
        return add_end(l1) + l2
    if (l1[-1].endswith(end_code) or l1[-1].endswith("%END VEC%")) and not l2[0].startswith(begin_code):
        return l1 + add_begin(l2)
    return l1 + l2            

def get_vector_block(lines, acc):
    if not lines:   
        return acc, []
    if left_bracket in lines[0]:  # this must be an inner vector
        vec_block, nextlines = get_vector_block(lines[1:], [])
        return get_vector_block(nextlines, acc + [flatten(make_inner_array(format_vector(vec_block)))])
    if right_bracket in lines[0]:
        return acc, lines[1:]
    else:
        return get_vector_block(lines[1:], acc + [lines[0]])


def process_vector(lines):
    vec_block, nextlines = get_vector_block(lines, [])
    return format_vector(vec_block), nextlines



### Main Agda-generated LaTeX file post-processing function ########################################

def process_lines(lines):

    inline_halt_back = [deduction, extra_skip, newline, left_bracket, begin_code, end_code, "\\>[6][@{}l@{\\AgdaIndent{0}}]%"]
    inline_halt = inline_halt_back + ["\\AgdaFunction{∙}"]

    unwanted = ["%", begin_code + "%", newline, extra_skip, "\\>[6]", "\\>[6][@{}l@{\\AgdaIndent{0}}", "\>[4][@{}l@{\AgdaIndent{0}}]%"]
    unwanted_inl = unwanted + ["\\<"] #, "\\>[.][@{}l@{}]\\<[1449I]%", "\\>[.][@{}l@{}]\\<[1415I]%"]
    
    def process_lines_tr(ls, acc):
        if not ls:
            return acc
        aac, bb = get_until_match_from(ls, [left_bracket])
        if not bb:
            return safe_add(acc, aac)

        aa , c = get_back_until_match_from(aac, inline_halt_back)
        #aa = strip_prefixes(strip_suffixes(aa, unwanted), unwanted)
        aa = strip_suffixes(aa, unwanted)
        vec_block, newls = process_vector(bb[1:])
        acc = safe_add(acc, add_end(aa)) + inline(strip_prefixes(c, unwanted_inl)) + make_array(vec_block)

        if should_be_inlined(newls[0]):
            inl, newls = get_until_match_from(newls, inline_halt)
            acc = acc + inline(strip_prefixes(inl, unwanted_inl))

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