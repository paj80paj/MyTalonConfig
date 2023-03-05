from talon import Module

mod = Module()

@mod.action_class
class Actions:
    def remove_leading_punctuation(input_string: str) -> str:
        """removes leading punctuation from the supplied string"""
        print(f"From function: {input_string=}")
        while input_string and input_string[0].isalnum() == False:
            input_string = input_string[1:]
        return input_string 