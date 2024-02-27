import re
import sys

def remove_suffixes_rec(s, l):
    """
    Repeatedly remove strings from l that occur at the end of s.
    """
    for substring in l:
        if s.endswith(substring):
            s = remove_suffixes_rec(s[:-len(substring)], l)
    return s

def remove_suffixes(s, l):
    """
    Repeatedly remove strings from l that occur at the end of s.
    """
    # substring_removed is False iff no substring was removed in previous iteration
    substring_removed = True
    while substring_removed:
        substring_removed = False
        for substring in l:
            # Check if the current substring is a final substring of s
            if s.endswith(substring):
                # Remove the final substring from s
                s = s[:-len(substring)]
                substring_removed = True  # Set flag to indicate a removal occurred
                break
    return s

def remove_prefixes(s, l):
    """
    Repeatedly remove strings from l that occur at the start of s.
    """
    # substring_removed is False iff no substring was removed in previous iteration
    substring_removed = True
    while substring_removed:
        substring_removed = False
        for substring in l:
            # Check if the current substring is a final substring of s
            if s.startswith(substring):
                # Remove the final substring from s
                s = s[len(substring):]
                substring_removed = True  # Set flag to indicate a removal occurred
                break
    return s

def should_be_inlined(line):
    inline_patterns = ["\\AgdaOperator{\\AgdaDatatype{⊢}}", "\\AgdaOperator{\\AgdaDatatype{⇀⦇}}\\AgdaSpace{}%"]
    outline_patterns = ["\\AgdaFunction{───────────────────────────────"]
    return any(inline_patterns, line) and not any(outline_patterns, line)
    
def strip_prefix(s):
    """
    Strip off leading patterns of the form \>[arbitrary_string] from the string s
    """
    pattern = r'^\\>\[[^\]]*\]' # match a leading \>, followed by any characters in brackets.
    return re.sub(pattern, '', s, count=1)  # replace the matched pattern with an empty string

def replace_agdaspace(s):
    return s.replace("\\AgdaSpace{}", "~")

def transform_section_to_vector(lines, nest_level):
    """
    Transform the given lines into a vertical vector format, leaving each variable formatted with 
    \AgdaGeneralizable{} and removing any trailing spaces or comment characters.
    """
    vec_lines = ""
    vec_element = ""
    for line in lines:
        # print("line", line)
        if "AgdaInductiveConstructor{﹐}" in line:
            if ("START" in vec_element):
                vec_lines += vec_element + "\\\\%\n"
            else:
                vec_lines += "\\begin{code}[inline]\\text{" + vec_element + "}\\end{code}\\\\%\n"
            vec_element = ""
            continue
        elif line == "\\\\\n":
            continue
        else:
            vec_element += replace_agdaspace(strip_prefix(line))
    # dont' forget the last element (which is not trailed by "AgdaInductiveConstructor{,}")            
    if ("START" in vec_element):
        vec_lines += vec_element + "%\n"
    else:
        vec_lines += "\\begin{code}[inline]\\text{" + vec_element + "}\\end{code}%\n"

    if nest_level > 0:
        prefix = "  START INNER ARRAY\n "
        suffix = "%\n%   END INNER ARRAY"
    else:
        prefix = "START ARRAY\n\\("
        suffix = "\\)%\n% END ARRAY"

    return "%\n% " + prefix + "\\left(\\begin{array}{c}%\n" + \
        vec_lines + "\\end{array}\\right)" + suffix + "\n"

def any(l , s):
    for substring in l:
        if substring in s:
            return True
    return False

def skip_line(line):
    pattern = r'\\>\[\.\]\[@\{\}l@\{\}\]\\<\[[0-9]+I\]%'
    if re.match(pattern, line):
        return True
    else:
        return False

def process_chunk(chunk, follows_vector, last_flag):
    #print("\n --------- chunk ---------- \n " + chunk + "\n ================================ \n")
    if chunk in ["\\\\\n%\n", "\\", "%", "%%"]:
        return ""
    unwanted_prefixes = ("\\\\", "%", "\\\\[\\AgdaEmptyExtraSkip]%")
    unwanted_suffixes = ("\\\\", "\\\\\[\\AgdaEmptyExtraSkip\]%", "\n")
    if last_flag:
        endcode = ""
    else:
        endcode = "%\n\\end{code}"
    if chunk:
        chunk = remove_suffixes(chunk, unwanted_suffixes)
        if follows_vector:
            follows_vector = False
            chunk = remove_prefixes(chunk, unwanted_prefixes)
            if should_be_inlined(chunk):
                bc = "\\begin{code}[inline]"
                output = bc + chunk + endcode
            else:
                bc = "\\begin{code}"
                output = bc + chunk + endcode
        else:
            output = chunk + endcode
    return output

def process_file(input_file_path, output_file_path):
    with open(input_file_path, 'r', encoding='utf-8') as input_file:
        lines = input_file.readlines()

    chunk = ""
    output_lines = []
    vector_nest_level = -1
    follows_vector = False
    follows_deduction_line = False
    vector_lines = [[] for _ in range(10)]  # Define vector_lines variable

    # brackets that signal the end of a vertical vector section
    closing_brackets = ["⟧ᶜ", "⟧ᶜˢ", "⟧ᵈ", "⟧ᵈᵉ", "⟧ᵉ", "⟧ᵉ'", "⟧ᵍ", "⟧ˡ", "⟧ˡᵉ", "⟧ⁿᵉ", "⟧ⁿᵖ", "⟧ᵖ", "⟧ʳ", "⟧ᵘ", "⟧ᵛ"]

    end_patterns = ["\\AgdaOperator{\\AgdaInductiveConstructor{" + s + "}}" for s in closing_brackets]
    
    # strings to be deleted if appearing next to a vertical vector
    
    for line in lines:
        if "\\AgdaOperator{\\AgdaInductiveConstructor{⟦}}" in line:
            vector_nest_level += 1
            if follows_deduction_line:
                follows_deduction_line = False
            if vector_nest_level == 0:
                output_lines.append(process_chunk(chunk, follows_vector, False))
                chunk = ""
                if follows_vector:  # and vector_nest_level == 0:
                    follows_vector = False
            continue
        elif "\\AgdaOperator{\\AgdaFunction{────────────────────────────────" in line:
            output_lines.append(process_chunk(chunk, follows_vector, False))
            output_lines.append("\\begin{code}" + line + "\\end{code}")
            chunk = ""
            follows_deduction_line = True
        elif vector_nest_level > -1 and any(end_patterns, line):
            follows_vector = True
            # Transform the collected section into a vertical vector
            
            transformed_vector_lines = transform_section_to_vector(vector_lines[vector_nest_level], vector_nest_level)
            vector_lines[vector_nest_level] = []  # Reset for the next section
            if vector_nest_level == 0:
                output_lines.append(transformed_vector_lines)
            else:
                vector_lines[vector_nest_level - 1].append(transformed_vector_lines)            
            vector_nest_level -= 1
            continue
        elif vector_nest_level > -1:
            vector_lines[vector_nest_level].append(line)
            continue
        else:
            if not (follows_vector and skip_line(line)) and not (follows_deduction_line and line in ["\\\\", "\\\\%", "%", "%%"]):
                chunk += line


    if chunk:
        output_lines.append(process_chunk(chunk, follows_vector, True))

    with open(output_file_path, 'w', encoding='utf-8') as output_file:
        output_file.writelines(output_lines)

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python agda2vec.py file.tex")
        sys.exit(1)

    file_path = sys.argv[1]
    process_file(file_path, file_path)

