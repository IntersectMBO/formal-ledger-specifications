import re

def inline_agda (line):
  return "\\end{code}%\n\\begin{code}[inline] " + line + " \\end{code}%\n\\begin{code}%\n"

def strip_prefix(s):
    # Strip off leading patterns of the form \>[arbitrary_string] from the string s,
    # where arbitrary_string is any string of characters.

    # replace a leading \>, followed by any characters in brackets, with an empty string
    return re.sub(r'^\\>\[[^\]]*\]', '', s, count=1)


def transform_section_to_vector(lines):
    """
    Transforms a given section of lines into a vertical vector format, ensuring
    each variable remains properly formatted within the \AgdaGeneralizable{} macro,
    including those with specific prefixes, and removing any trailing spaces or comment characters.
    """
    element_patterns = ["AgdaGeneralizable", "AgdaOperator", "AgdaFunction", "AgdaBound", "AgdaNumber"]
    vec_lines = ""
    vec_element = ""
    for line in lines:
        if "AgdaInductiveConstructor{,}" in line:
            vec_lines += "\\begin{code}[inline] " + vec_element + " \\end{code}\\\\%\n"
            vec_element = ""
        elif any (element_patterns, line):
            vec_element += strip_prefix(line)
            # print(line)
            print("vec_element: " + vec_element)
            print("vec_lines: " + vec_lines)
        else:
            print ("do nothing")
    # dont' forget the last element (which is not trailed by "AgdaInductiveConstructor{,}")            
    vec_lines += "\\begin{code}[inline] " + vec_element + " \\end{code}%\n"


    # Remove the trailing \\ from the last variable
    #vec_lines = vec_lines.rstrip('\\\\\n')
    print ("vec_lines: " + vec_lines)
    return "%\n\\end{code}%\n\\begin{code}[inline]%\n% START ARRAY\n\\(\\left(\\begin{array}{c}%\n" + \
        vec_lines + "\\end{array}\\right)\\)%\n% END ARRAY\n\\end{code}"

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

    inline_patterns = ["\\AgdaOperator{\\AgdaDatatype{⊢}}\\<"]
    for line in lines:
        if "\\AgdaOperator{\\AgdaInductiveConstructor{⟦}}" in line and not inside_section:
        #if re.match(start_pattern, line) and not inside_section:
            inside_section = True
            follows_vector = False
            continue  # Skip the start line
        elif inside_section and any(end_patterns, line):
            inside_section = False
            follows_vector = True
            # Transform the collected section into a vertical vector
            transformed_section = transform_section_to_vector(section_lines)
            if transformed_section.strip():  # Avoid adding empty transformations
                output_lines.append(transformed_section)
            section_lines = []  # Reset for the next section
            continue
        elif inside_section:
            section_lines.append(line)
        else:
            if follows_vector:
                if any(inline_patterns, line):
                    output_lines.append("\\begin{code}[inline]%\n" +  line)
                else:
                    output_lines.append("\\begin{code}%\n" +  line)
                follows_vector = False
            else:
                output_lines.append(line)

    #output_lines = clean_array_edges(output_lines)            

    with open(output_file_path, 'w', encoding='utf-8') as output_file:
        output_file.writelines(output_lines)

    print(f"File '{input_file_path}' has been processed and output to '{output_file_path}'.")

# Example usage
if __name__ == "__main__":
    input_tex_file = 'Deleg.tex'  # Specify the path to your input .tex file
    output_tex_file = 'DelegVec8.tex'  # Specify the path for the output .tex file
    process_file(input_tex_file, output_tex_file)
