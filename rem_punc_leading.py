from talon import Module
import string

mod = Module()

@mod.action_class
class Actions:
    def remove_leading_punctuation(input_string: str) -> str:
        """removes leading punctuation from the supplied string"""
        while input_string and input_string[0].isalnum() == False:
            input_string = input_string[1:]
        return input_string
    def remove_punctuation(text: str) -> str:
        """remove punctuation from the supplied string using the string module"""
        text = text.translate(str.maketrans('', '', string.punctuation))
        return text
    def create_markdown_tasks(te4xt: str)->str:
        """turns each line into a task in markdown"""
        # text = text.translate(str.maketrans('', '', string.punctuation))
        # Split the text into lines
        lines = text.split('\n')

        # Loop through each line and check if it's a task or a bullet point
        for i in range(len(lines)):
            line = lines[i].strip()
            print(f"{line=}")
            if line.startswith('- [ ] '):
                # If the line is already a task item, skip it
                print('skip')
                continue
            elif line.startswith('-'):
                # If the line is a bullet point, convert it to a task item
                lines[i] = '- [ ]' + line[2:]
                print(f"{lines[i]=}")
            else:
                # If the line is not a bullet point or task item, add it as a new task item
                lines[i] = '- [ ] ' + line
                print(f"{lines[i]=}")

        # Join the lines back together into a single string
        result = '\n '.join(lines)
        return result
    
    def add_prefix_to_lines(text, new_prefix, prefixes_to_remove):

        prefixes_to_remove = [TDY, [ ],SMDY,[x],MEM,QUE]
            
        # Split the text into lines
        lines = text.split("\n")
        
        # Remove any existing prefixes from each line
        for i in range(len(lines)):
            for prefix in prefixes_to_remove:
                if lines[i].startswith(prefix):
                    lines[i] = lines[i][len(prefix):]
        
        # Add the new prefix to each line
        for i in range(len(lines)):
            lines[i] = new_prefix + lines[i]
        
        # Join the lines back into a single string and return it
        return "\n".join(lines)


