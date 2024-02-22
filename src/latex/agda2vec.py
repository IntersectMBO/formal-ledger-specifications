import re

def remove_suffixes_rec(s, l):
    """
    Repeatedly remove any string in l that is a final substring of s.
    """
    for substring in l:
        if s.endswith(substring):
            s = remove_suffixes_rec(s[:-len(substring)], l)
    return s

def remove_suffixes(s, l):
    """
    Repeatedly removes any string in list l that is a final substring of the string s.
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

def inline_agda (line):
  return "\\end{code}%\n\\begin{code}[inline] " + line + " \\end{code}%\n\\begin{code}%\n"

def should_be_inlined(line):
    inline_patterns = ["\\AgdaOperator{\\AgdaDatatype{⊢}}", "\\AgdaOperator{\\AgdaDatatype{⇀⦇}}\\AgdaSpace{}%"]
    return any(inline_patterns, line)

# Strip off leading patterns of the form \>[arbitrary_string] from the string s
def strip_prefix(s):
    pattern = r'^\\>\[[^\]]*\]' # match a leading \>, followed by any characters in brackets.
    return re.sub(pattern, '', s, count=1)  # replace the matched pattern with an empty string if found at the start

def transform_section_to_vector(lines):
    """
    Transform the given lines into a vertical vector format, leaving each variable formatted with 
    \AgdaGeneralizable{} and removing any trailing spaces or comment characters.
    """
    #element_patterns = ["AgdaGeneralizable", "AgdaOperator", "AgdaFunction", "AgdaBound", "AgdaNumber"]
    vec_lines = ""
    vec_element = ""
    for line in lines:
        if "AgdaInductiveConstructor{﹐}" in line:
            vec_lines += "\\begin{code}[inline] " + vec_element + " \\end{code}\\\\%\n"
            vec_element = ""
        else:
            vec_element += strip_prefix(line)
    # dont' forget the last element (which is not trailed by "AgdaInductiveConstructor{,}")            
    vec_lines += "\\begin{code}[inline] " + vec_element + " \\end{code}%\n"

    # Remove the trailing \\ from the last variable
    #vec_lines = vec_lines.rstrip('\\\\\n')
    return "%\n% START ARRAY\n\\(\\left(\\begin{array}{c}%\n" + \
        vec_lines + "\\end{array}\\right)\\)%\n% END ARRAY\n"

def all(l, s):
    for substring in l:
        if substring not in s:
            return False
    return True
def any(l , s):
    for substring in l:
        if substring in s:
            return True
    return False

   
def process_file(input_file_path, output_file_path):
    with open(input_file_path, 'r', encoding='utf-8') as input_file:
        lines = input_file.readlines()

    chunk = ""
    output_lines = []
    inside_section = False
    section_lines = []
    follows_vector = False

    # regex to detect start of a vertical vector section
    start_pattern = r'(\\>[0-9]+[A-Za-z]*)?\\AgdaOperator{\\AgdaInductiveConstructor{⟦}}(%\s*)?'
    # list to detect start of a vertical vector section
    start_patterns = ["\\AgdaOperator{\\AgdaInductiveConstructor{⟦}}"]
    
    # regex to detect end of a vertical vector section
    end_pattern = r'\\AgdaOperator{\\AgdaInductiveConstructor{⟧(ᶜ|ᶜˢ|ᵈ|ᵈᵉ|ᵖ|ᵛ)?}}\\<%'
    # list to detect end of a vertical vector section
    closing_brackets = ["⟧ᶜ", "⟧ᶜˢ", "⟧ᵈ", "⟧ᵈᵉ", "⟧ᵖ", "⟧ᵛ"]
    end_patterns = ["\\AgdaOperator{\\AgdaInductiveConstructor{" + s + "}}" for s in closing_brackets]
    
    unwanted_substrings = ("\\<", "\\\\", "\\\\\[\\AgdaEmptyExtraSkip\]%", "\\>[.][@{}l@{}]\\<[314I]", "%", "\n")
    
    inline_patterns = ["\\AgdaOperator{\\AgdaDatatype{⊢}}\\<"]

    for line in lines:
        if "\\AgdaOperator{\\AgdaInductiveConstructor{⟦}}" in line and not inside_section:
            inside_section = True
            if chunk:
                print("== begin chunk ==============")
                print(chunk)
                print("== end chunk ================")
                output_lines.append(remove_suffixes(chunk, unwanted_substrings))
                output_lines.append("\n\\end{code}")
                chunk = ""
            continue  # Skip the start line
        elif inside_section and any(end_patterns, line):
            inside_section = False
            follows_vector = True
            # Transform the collected section into a vertical vector
            transformed_section = transform_section_to_vector(section_lines)
            #if transformed_section.strip():  # Avoid adding empty transformations
            output_lines.append(transformed_section)
            section_lines = []  # Reset for the next section
            continue
        elif inside_section:
            section_lines.append(line)
            continue
        else:
            if follows_vector:
                follows_vector = False
                if should_be_inlined(line):
                    chunk += "\\begin{code}[inline]" +  line
                else:
                    chunk += "\\begin{code}" +  line
            else:
                chunk += line
    if chunk:
        output_lines.append(chunk)

    #output_lines = clean_array_edges(output_lines)            

    with open(output_file_path, 'w', encoding='utf-8') as output_file:
        output_file.writelines(output_lines)

    print(f"File '{input_file_path}' has been processed and output to '{output_file_path}'.")

# Example usage
if __name__ == "__main__":
    input_tex_file = 'Deleg.tex'  # Specify the path to your input .tex file
    output_tex_file = 'DelegVec8.tex'  # Specify the path for the output .tex file
    process_file(input_tex_file, output_tex_file)

    
""" def clean_array_edges(lines):
    out_lines = []
    prev_line = ""
    prev_prev_line = ""
    #omit_patterns = ["\\\\", "\\>[.][@{}l@{}]", "\\\\\[\\AgdaEmptyExtraSkip\]"]

    for line in lines:
        if "START ARRAY" in line:
            prev_prev_line = "\\end{code}%\n"
            prev_line = "\\begin{code}[inline]%\n"
        if "END ARRAY" in line:
            line += "\\end{code}%\n"
        if (prev_prev_line != ""):
            out_lines.append(prev_prev_line)
        prev_prev_line = prev_line
        prev_line = line
        
    out_lines.append(prev_line)
    #out_lines.append(line)

    return out_lines
 """