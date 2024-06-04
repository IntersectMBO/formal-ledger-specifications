import sys

def write_file(filename, lines):
    with open(filename, 'w') as file:
        for line in lines:
            file.write(line + '\n')

def read_file(filename):
    with open(filename, 'r') as file:
        return file.readlines()

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


def should_be_inlined(str):
    inline_patterns = ["\\AgdaOperator{\\AgdaDatatype{⊢}}", "\\AgdaOperator{\\AgdaDatatype{⇀⦇}}\\AgdaSpace{}%"]
    outline_patterns = ["\\AgdaFunction{───────────────────────────────"]
    return any(substr in str for substr in inline_patterns) and not any(substr in str for substr in outline_patterns)

def strip_suffix(ls):
    """
    Strip off trailing \<% from the string s
    """
    if ls and ls[-1] == "%":
        ls = ls[:-1]
    if ls and ls[-1] == "\\\\":
        ls = ls[:-1]
    if ls and ls[-1].endswith("\\<%"):
        ls[-1] = ls[-1][:-3]
    return ls

def format_vector(vector_block):
    def format_vector_tr(vector_block, acc):
        if not vector_block:
            return acc
        next_element, vector_block = get_until_match_from(vector_block, ["AgdaInductiveConstructor{,}"])
        next = strip_suffix(next_element)
        return format_vector_tr(vector_block[1:], acc + ["\\begin{code}[inline]\\text{"] + next + ["}\\end{code}\\\\%"])
    return format_vector_tr(vector_block, [])

def process_vector(lines):
    def get_vector_block(lines, acc):
        if not lines:
            return acc, []
        if "AgdaInductiveConstructor{⟦" in lines[0]:  # this must be an inner vector
            vec_block, nextlines = process_vector(lines[1:])
            return get_vector_block(nextlines, acc + vec_block)
        if "AgdaInductiveConstructor{⟧" in lines[0]:
            return acc, lines[1:]
        else:
            return get_vector_block(lines[1:], acc + [lines[0]])
    vec_block, nextlines = get_vector_block(lines, [])
    return format_vector(vec_block), nextlines

def process_lines(lines):
    inline_halters = ["AgdaFunction{───────────────────────────────", "AgdaEmptyExtraSkip", "\\\\"] #, "AgdaInductiveConstructor{⟦", "\\\\"]
    prefix = ["\\end{code}", "%START VEC%", "~\\(\\left(\\begin{array}{c}%"]
    suffix = ["\\end{array}\\right)\\)~", "%END VEC%"]

    def process_lines_tr(ls, acc):
        if not ls:
            return acc
        aac, bb = get_until_match_from(ls, ["AgdaInductiveConstructor{⟦}"])
        if not bb:
            return acc + aac

        aa , c = get_back_until_match_from(aac, inline_halters)
        if not c:
            acc = acc + aa
        else:
            acc = acc + aa + ["\\end{code}%", "%BEGIN INLINE%", "\\begin{code}[inline]%"] + c

        vec_block, newbb = process_vector(bb[1:])

        if not newbb:
            return acc + prefix + vec_block + suffix
        if should_be_inlined(newbb[0]):
            inlined_lines, ls = get_until_match_from(newbb, inline_halters)
            acc1 = acc + prefix + vec_block + suffix + ["%BEGIN INLINE%", "\\begin{code}[inline]%"] + inlined_lines + ["\\end{code}%", "%END INLINE%", "\\begin{code}%"]
            return process_lines_tr(ls, acc1)
        else:
            return process_lines_tr(newbb, acc + prefix + vec_block + suffix + ["\\begin{code}%"])

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
