#!/usr/bin/env python3


import csv
import codecs
import re
import pathlib

class UTF16Writer:
    def __init__(self, file_path):
        self.f = open(file_path, "wb")
        self.f.write(codecs.BOM_UTF16_LE)

    def __enter__(self):
        return self

    def __exit__(self, type, value, traceback):
        self.close()

    def write(self, string):
        self.f.write(string.encode("utf-16-le"))

    def close(self):
        self.f.close()

class DSLWriter(UTF16Writer):
    def __init__(self, file_path):
        super().__init__(file_path)
        self.tabulation = 0

    def write(self, string):
        string = re.sub("^", "\t" * self.tabulation, string)
        super().write(string)

    def create_dict_header(self, dict_name):
        self.write(
                '#NAME "' + dict_name + '"\n'
                '#INDEX_LANGUAGE "English"\n'
                '#CONTENTS_LANGUAGE "English"\n\n'
                )

    def create_dict_card(self, headword):
        self.write(headword + "\n")
        self.tabulation += 1

    def create_dict_subentry(self, headword):
        self.write("@ " + headword + "\n")
        self.tabulation += 1

    def exit_subentry(self, nested_subentry = False):
        self.tabulation -= 1
        if not nested_subentry:
            self.write("@\n")

class CsvTable2Card(DSLWriter):
    def __init__(self, file_path):
        super().__init__(file_path)

    def read_csv(self, src):
        data = []

        # Reads the CSV. Blank columns menas that is a continuation of the previous line
        with open(src, newline='') as f:
            reader = csv.reader(f, delimiter=',', quotechar='"')
            for row in reader:
                if '' in row:
                    data[-1] = [" ".join(x) for x in zip(data[-1], row)]

                else:
                    data.append(row)

        # Filter (removes left abd right whitespaces)
        for line in range(len(data)):
            for column in range(len(data[line])):
                data[line][column] = data[line][column].lstrip().rstrip()
                data[line][column] = re.sub("\s+", " ", data[line][column])

        self.header = data[0]
        data = data[1:]
        self.data = []

        # Remove ignored words
        for line in data:
            if line[self.column_with_subentry].lower() not in self.words_to_ignore:
                self.data.append(line)


    def write_in_subentry(self, string):
        string = string.replace(self.card_name, "<<" + self.card_name + ">>")
        self.write(string)

    def write_dsl(self):
        self.create_dict_card(self.card_name)
        self.write(self.card_description + "\n")
        self.write("Chapter: " + self.chapter + "\n")
        self.write("Table: " + self.table_name + "\n")

        for line in self.data:
            self.create_dict_subentry(line[self.column_with_subentry])

            for column in range(len(line)):
                if column == self.column_with_subentry:
                    continue
                self.write_in_subentry(self.header[column] + ": " + line[column] + "\n")

            self.write_in_subentry("Toplevel: " + self.card_name + "\n")

            self.exit_subentry(True)


        self.write("@")

def read_UTF16LE(file_path):
    with open(file_path, "rb") as file:
        text = file.read()
        text = text[len(codecs.BOM_UTF16_LE):]
        return text

class DictCreator(UTF16Writer):
    def __init__(self, file_path):
        self.file_path = file_path
        super().__init__(file_path)

    def create_library(self):
        self.write(
                '#NAME "' + self.dict_name + '"\n'
                '#INDEX_LANGUAGE "English"\n'
                '#CONTENTS_LANGUAGE "English"'
                )

        base_path = pathlib.Path(self.file_path).parent.absolute()

        for file in pathlib.Path(base_path).glob("*.txt"):
            text = read_UTF16LE(file)
            self.write("\n\n")
            self.f.write(text)
