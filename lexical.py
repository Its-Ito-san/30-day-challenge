import re

# Define regular expressions for tokens
keywords = ['int', 'if', 'then', 'else', 'endif', 'while', 'do', 'enddo', 'print']
operators = ['=', '[', ']', '(', ')', '+', '-', '*', '/']
relational_operators = ['<', '<=', '==', '>=', '>', '!=']
punctuation = [';', ',']
letters = 'abcdefghijklmnopqrstuvwxyz'
digits = '0123456789'

# Define a function to tokenize the input program
def tokenize(program):
    tokens = []
    current_token = ''
    i = 0
    while i < len(program):
        # Skip whitespace characters
        if program[i].isspace():
            i += 1
            continue
        # Check for keywords
        for keyword in keywords:
            if program[i:i+len(keyword)] == keyword:
                tokens.append((keyword, 'keyword'))
                i += len(keyword)
                break
        else:
            # Check for operators
            for operator in operators:
                if program[i:i+len(operator)] == operator:
                    tokens.append((operator, 'operator'))
                    i += len(operator)
                    break
            else:
                # Check for relational operators
                for rel_op in relational_operators:
                    if program[i:i+len(rel_op)] == rel_op:
                        tokens.append((rel_op, 'relational_operator'))
                        i += len(rel_op)
                        break
                else:
                    # Check for punctuation
                    if program[i] in punctuation:
                        tokens.append((program[i], 'punctuation'))
                        i += 1
                        continue
                    else:
                        # Check for identifiers
                        if program[i] in letters:
                            while i < len(program) and (program[i] in letters or program[i] in digits):
                                current_token += program[i]
                                i += 1
                            tokens.append((current_token, 'identifier'))
                            current_token = ''
                            continue
                        else:
                            # Check for constants
                            if program[i] in digits:
                                while i < len(program) and program[i] in digits:
                                    current_token += program[i]
                                    i += 1
                                tokens.append((current_token, 'constant'))
                                current_token = ''
                                continue
                            else:
                                # Move to the next character if no token is recognized
                                i += 1
    return tokens

# Test the lexical analyzer
if __name__ == "__main__":
    program = """
    int x = 10;
    if (x < 20) then
    print(x);
    endif
    """
    tokens = tokenize(program)
    print("Tokens:")
    for token in tokens:
        print(token)
