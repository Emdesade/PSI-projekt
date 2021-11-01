# Zad8

class FileManager:
    def __init__(self, file_name):
        self.file_name = file_name

    def read_file(self):
        return open(f'{self.file_name}', 'r').read()

    def update_file(self, text_data):
        test = open(self.file_name, 'a', encoding='utf-8')
        return test.write(f"\n{text_data}")