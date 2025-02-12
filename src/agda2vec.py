import re
import sys

def write_file(filename: str, lines: List[str]):
    with open(filename, 'w') as file:
        for line in lines:
            file.write(line + '\n')

def read_file(filename: str) -> List[str]:
    with open(filename, 'r') as file:
        return file.readlines()

### General Helper functions #########################################################################
def is_slash_gt_number(s: str) -> bool:
    pattern = r'\\>\[(?:[1-9]?\d)\]'
    return bool(re.fullmatch(pattern, s))

def replace_suffix(x: str, s1: str, s2: str) -> str:
    """
    If x ends with suffix s1, then replace that part of x with s2.
    @param x: string to process.
    @param s1: suffix to replace.
    @param s2: replacement suffix.
    """
    if x.endswith(s1):
        return x[:-len(s1)] + s2
    return x

def rm_weird_agda_patterns(lines: List[str]) -> List[str]:
    """
    Remove weird Agda patterns from the list of strings.
    @param lines: list of strings to process.
    @return: list of strings with weird Agda patterns removed.
    """
    # The pattern to match the specified form
    pattern = r'\\>\[\.\]\[@\{\}l@\{\}\]\\<\[[1-9][0-9]*I\]'
    
    # List to store lines that do not match the pattern
    filtered_lines = [line for line in lines if not re.match(pattern, line)]
    return filtered_lines

def rm_prefixes(s: str, l: List[str]) -> str:
    """
    Repeatedly remove from s any prefix that appears in the list l.
    @param s: string to process.
    @param l: list of prefixes to remove.
    @return: string with all prefixes from l removed.
    """
    for prefix in l:
        if s.startswith(prefix):
            s = rm_prefixes(s[len(prefix):], l)
    return s

def remove_prefixes(ls1: List[str], ls2: List[str]) -> List[str]:
    """
    Remove from the first element of ls1 any element of ls2 that is a prefix of that element.
    If the first element of ls1 is fully removed, then proceed to the next element, and so on.
    @param ls1: list of strings to process.
    @param ls2: list of prefixes to remove.
    @return: list of strings with prefixes from ls2 removed.
    """
    while ls1 and ls1[0]:  # While there's a non-empty string in the first position
        new_first = rm_prefixes(ls1[0], ls2)
        if new_first == ls1[0]:  # No more prefixes to remove
            break
        ls1[0] = new_first
        if not ls1[0]:  # If the first element becomes empty, remove it
            ls1.pop(0)
    return ls1

def rm_suffixes(s: str, l: List[str]) -> str:
    """
    Repeatedly remove from s any suffix that appears in the list l.
    @param s: string to process.
    @param l: list of suffixes to remove.
    @return: string with all suffixes from l removed.
    """
    for suffix in l:
        if s.endswith(suffix):
            s = rm_suffixes(s[:-len(suffix)], l)
    return s

def remove_suffixes(ls1: List[str], ls2: List[str]) -> List[str]:
    """
    Remove from the last string in ls1 any suffix that appears in ls2.
    If the last element of ls1 is fully removed, repeat suffix removal on the 
    previous (new last) element of ls1, and so on.
    @param ls1: list of strings to process.
    @param ls2: list of suffixes to remove.
    @return: list of strings with suffixes from ls2 removed.
    """
    while ls1 and ls1[-1]:  # While there's a non-empty string in the last position
        new_last = rm_suffixes(ls1[-1], ls2)
        if new_last == ls1[-1]:  # No more suffixes to remove
            break
        ls1[-1] = new_last
        if not ls1[-1]:  # If the last element becomes empty, remove it
            ls1.pop()
    return ls1

def find_matching_substring(ls1: List[str], ls2: List[str]) -> int:
    """
    @param ls1: list of strings to search within.
    @param ls2: list of strings to search for (as substring of string in ls1).
    @return: index of the first string in ls1 that contains an element of ls2 as a substring.
    """
    if (not ls1) | (not ls2):
        return -1

    for index, element in enumerate(ls1):
        if any(substring in element for substring in ls2):
            return index

    return -1

def match_exists(ls1: List[str], ls2: List[str]) -> bool:
    """
    @param ls1: list of strings to search within.
    @param ls2: list of strings to search for (as substring of string in ls1).
    @return: True if there is an element in `ls1` that contains an element of `ls2` as a substring.
    """
    return (find_matching_substring(ls1, ls2) != -1)

def find_last_matching_substring(ls1: List[str], ls2: List[str]) -> int:
    """
    @param ls1: list of strings to search within.
    @param ls2: list of strings to search for (as substring of string in ls1).
    @return: index of the last string in ls1 that contains an element of ls2 as a substring.
    """
    if (not ls1) | (not ls2):
        return -1

    last_match_index = -1

    # Iterate over the indices and elements of ls1
    for index, element in enumerate(ls1):
        if any(substring in element for substring in ls2):
            last_match_index = index

    return last_match_index

def get_until_match(ls1: List[str], ls2: List[str], to: bool=False) -> Tuple[List[str], List[str]]:
    """
    @param ls1: list of strings to be split into two lists.
    @param ls2: list of "halting" strings used to decide at which index to split ls1.
    @param to: a boolean used to decide where to put the boundary of the split.
               If `to == True`, then match will be part of the first list returned.
               If `to == False`, then match will be part of the second list returned.

    @return: a pair (fst, snd) of lists of strings where
             if to == True:
               fst = ls1[:n+1] (the last element has an element of ls2 as a substring)
               snd = ls1[n+1:]
             if to == False:
               fst = ls1[:n]
               snd = ls1[n:] (the first element has an element of ls2 as a substring).

    @note: If no element of ls2 is a substring of a string in ls1, then the first list
           of the returned pair will be the same as ls1, the second list will be empty.
    """
    n = find_matching_substring(ls1, ls2)
    if n == -1:
        return ls1, []
    if to:
        return ls1[:n + 1], ls1[n + 1:]
    return ls1[:n], ls1[n:]
    # return [line.strip() for line in ls1[:index]], [line.strip() for line in ls1[index:]]

def get_to_last_match(ls1: List[str], ls2: List[str]) -> Tuple[List[str], List[str]]:
    """
    @param ls1: list of strings to be split into two lists.
    @param ls2: list of strings to look for (as substring) in elements of ls1.
    @return: a pair of lists of strings (fst, snd) where
             fst: list of strings from ls1 from ls1[0] up to and including the
             last element of ls1 that contains a string from ls2 as a substring.
             snd: the remaining elements of ls1.

    @note: If no element of ls2 appears as a substring of a string in ls1, then
           the first list of returned pair will be empty, the second will be ls1.
    """
    n = find_last_matching_substring(ls1, ls2)
    if n == -1:
        return [], ls1
    return ls1[:n + 1], ls1[n + 1:]


def are_all_substrings(list1: List[str], list2: List[str]) -> bool:
    """
    Returns true iff every string in `list2` is a substring of some string in `list1`.
    Parameters:  list1 (list of str): The list of strings to search within.
                 list2 (list of str): The list of strings to search for.
    """
    return all(any(s2 in s1 for s1 in list1) for s2 in list2)


### String constants #########################################################################
agda_space = "\\AgdaSpace{}"
aic = "AgdaInductiveConstructor{,}"
deduction = "AgdaFunction{───────────────────────────────"
extra_skip = "[\\AgdaEmptyExtraSkip]"
entailment1 = "\\AgdaFunction{⊢}"
entailment2 = "\\AgdaDatatype{⊢}"
sts1 = "\\AgdaFunction{⇀⦇}"
sts2 = "\\AgdaDatatype{⇀⦇}"
left_brace = "\\AgdaOperator{\\AgdaField{❴}}"
right_brace = "\\AgdaOperator{\\AgdaField{❵}}"
left_bracket = "AgdaInductiveConstructor{⟦}"
right_bracket = "AgdaInductiveConstructor{⟧"

newline = "\\\\"
begin_code = "\\begin{code}"
begin_code_inline = "\\begin{code}[inline]"
end_code = "\\end{code}"
begin_array = "\\left(\\begin{array}{c}"
end_array = "\\end{array}\\right)"

agda_arrow = "\\AgdaSymbol{→}"
gamma = "\\AgdaGeneralizable{Γ}"
agda_dot = "\\AgdaFunction{∙}"

# N.B. It's important that left_bracket includes the trailing curly brace, to avoid matching
# constructors, while right_bracket does not include the trailing curly brace, so that the 
# latter will match all varieties of closing brackets.

### Helper functions #########################################################################
def inline_text(element: str) -> List[str]:
    if not element:
        return []
    return [begin_code_inline + "\\text{"] + element + ["}" + end_code + newline]

def should_be_inlined(s: str) -> bool:
    inline_patterns = [entailment1, entailment2 , sts1, sts2]
    return any(substr in s for substr in inline_patterns) and not any(substr in s for substr in [deduction])

def replace_backslashes(input_string: str) -> Tuple[str, int]:
    """
    Replaces all occurrences of '\\\\' in the input string with ',' and returns the modified string
    along with the count of replacements made.
    (This function is useful for converting a string representing a LaTeX vertical vector 
    to that of a horizontal vector.)
    Parameters: input_string (str), the string to process.
    Returns: A tuple containing the modified string and the number of replacements made.
    """
    replacements = input_string.count("\\\\")
    modified_string = input_string.replace("\\\\", "&")
    return modified_string, replacements

def replace_backslashes_in_list(string_list):
    """
    Replaces all occurrences of '\\\\' in each string of the input list with '&' and returns 
    the list of modified strings along with the total number of replacements.
    Parameter: string_list (list of str), the list of strings to process.
    Return: A tuple containing the list of modified strings along with the number of replacements.
    """
    total_replacements = 0
    modified_list = []
    for s in string_list:
        if not match_exists([s], ["\\begin{code}[inline]"]):
            replacements = s.count(newline)
            total_replacements += replacements
            s = s.replace(newline, "&")
        modified_list.append(s)
    return modified_list, total_replacements

def make_horizontal_array(ls):
    if not ls:
        return []
    ls = remove_suffixes(ls, [newline])
    ls, n = replace_backslashes_in_list(ls)
    return ["%START HORIZONTAL VEC%", "\\(" + "\\left(\\begin{array}{" + ('c' * (n + 1)) + "}"] + ls + ["\\end{array}\\right)^T\\)", "%END HORIZONTAL VEC%"]

def make_array(ls):
    if not ls:
        return []
    ls = remove_suffixes(ls, [newline])
    return ["%START VEC%", "\\(" + begin_array] + ls + [end_array + "\\)", "%END VEC%"]

def make_inner_array(ls):
    if not ls:
        return []
    ls = remove_suffixes(ls, ["%"])
    return [begin_array] + ls + [end_array]

def format_vector(vector_block):
    if not vector_block:
        return []
    unwanted_suffixes = [newline, "%", "\\<", "\\>"]
    element_halt = [aic, begin_array, left_brace, right_bracket]

    def get_next_element(vector_block, acc):
        if not vector_block:
            return acc, []

        next_element, vector_block = get_until_match(vector_block, element_halt)

        # ignore "AgdaInductiveConstructor{,}" appearing inside ❴_❵; don't split vector element at that `,`
        if vector_block and left_brace in vector_block[0]:
            ne, vector_block = get_until_match(vector_block, [right_brace], True)
            return get_next_element(vector_block, acc + next_element + ne)

        return acc + next_element, vector_block

    def format_vector_tr(vector_block, acc):
        if not vector_block:
            return acc

        # get next element of vector
        next, vector_block = get_next_element(vector_block, [])
        # clean next element
        next = [ replace_suffix(x, agda_space + "%", " ") for x in next]
        next = rm_weird_agda_patterns(next)
        next = remove_suffixes(next, unwanted_suffixes)
        if next == [newline]:
            next = []
        else:
            next = inline_text(next)

        if vector_block and begin_array in vector_block[0]:
            return format_vector_tr(vector_block[1:], acc + next + [vector_block[0], newline])
        return format_vector_tr(vector_block[1:], acc + next)

    return format_vector_tr(vector_block, [])

def flatten(l):
    if not l:
        return ""
    return l[0] + flatten(l[1:])

def inline(l):
    if not l:
        return []
    return [begin_code_inline] + l + [end_code]

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

def process_inline_block(inl, unwanted):
    inl = remove_suffixes(remove_prefixes(inl, unwanted), unwanted)
    inl = rm_weird_agda_patterns(inl)

    semicolon_after = ["\\AgdaGeneralizable{fut}"]
    tab_before = [agda_dot]
    space_before = [gamma, "\\AgdaBound{utxoSt'}", "\\AgdaFunction{mkStakeDistrs}", "\\AgdaFunction{stakeDistr}", agda_arrow]
    space_after = [agda_arrow, "\\AgdaGeneralizable{fut}", agda_dot, entailment1] #, entailment2]
    newline_before = [agda_dot, "\\AgdaBound{ls'}", "\\AgdaBound{utxoSt'}"]

    if not inl or (len(inl) == 1 and is_slash_gt_number(inl[0])):
        return []
    if not match_exists(inl, semicolon_after):
        inl = inl + [";"]
    if not match_exists(inl, space_before):
        inl = ["~" + agda_space] + inl
    if not match_exists(inl, space_after):
        inl = inl + [agda_space]

    inl = inline(inl)
    if not match_exists(inl, tab_before):
        inl = ["\\phantom{XX}%"] + inl
    if not match_exists(inl, newline_before):
        inl =  [newline] + inl
    return inl        

def safe_add(l1, l2):
    if not l1:
        return l2
    if not l2:
        return l1
    if l1[-2].endswith(end_code) and l1[-1].endswith(newline):
        if l2[0].startswith(end_code):
            return l1 + l2[1:]
        if l2[0].startswith(begin_code):
            return l1 + l2
        if l2[0].startswith(newline):
            return l1 + [begin_code] + l2[1:]
        return l1 + [begin_code] + l2
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

    inline_halt_back = [deduction, extra_skip, newline, left_bracket, begin_code, end_code, "\\>[6][@{}l@{\\AgdaIndent{0}}]%", "\\>[981I][@{}l@{\\AgdaIndent{0}}]"]
    inline_halt = inline_halt_back + ["\\AgdaFunction{∙}" , "\\>[981I][@{}l@{\\AgdaIndent{0}}]"]

    unwanted = ["%", begin_code, newline, extra_skip, "\\>[4]", "\\>[6]", "[@{}l@{\\AgdaIndent{0}}]", "\\>[981I][@{}l@{\\AgdaIndent{0}}]"]
    unwanted_inline = unwanted + ["\\>[0]", "\\>[2]", "\\<", "\\>[981I][@{}l@{\\AgdaIndent{0}}]"]

    horizontal1 = ["\\AgdaBound{es}", "\\AgdaField{∅}", "\\AgdaInductiveConstructor{false}"]
    horizontal2 = ["\\AgdaBound{esW}", "\\AgdaBound{removed}", "\\AgdaUnderscore{}"]
    horizontal3 = ["\\AgdaBound{utxoSt}", "\\AgdaBound{govSt}"]
    def process_lines_tr(ls, acc):
        if not ls:
            return acc

        # aac: Agda code block up to the next left bracket (start of vector)
        # bb: Agda code block from the left bracket to the end of the vector
        aac, bb = get_until_match(ls, [left_bracket])
        if not bb:
            return safe_add(acc, aac)

        # aa: Agda code block before the inlined block preceding the vector
        # c: Agda code block preceding the vector that should be inlined
        aa , c = get_to_last_match(aac, inline_halt_back)
        aa = remove_suffixes(aa, unwanted)
        c = process_inline_block(c, unwanted_inline) # pre

        vec_block, newls = process_vector(bb[1:])
        if are_all_substrings(vec_block, horizontal1) or are_all_substrings(vec_block, horizontal2) or are_all_substrings(vec_block, horizontal3):
            acc = safe_add(acc, add_end(aa)) + c + make_horizontal_array(vec_block)
        else:
            acc = safe_add(acc, add_end(aa)) + c + make_array(vec_block)          

        inl, newls = get_until_match(newls, inline_halt)
        inl = process_inline_block(inl, unwanted_inline) # postx
        acc = acc + inl
        if newls[0] == newline and newls[1] == "%" and newls[2] == newline + extra_skip + "%":
            newls = [newline] + newls[3:]
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
