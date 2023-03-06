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