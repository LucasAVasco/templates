#!/bin/env python3


import converter
import configparser


base_dir = "./MSP430F5529/auto"
dict_name = "MSP430F5529-tables"


if __name__ == "__main__":
    config = configparser.ConfigParser()
    config.read("table.cfg")

    words_to_ignore = config["card.ignore"]
    words_to_ignore = [x.lower() for x in words_to_ignore]

    with converter.CsvTable2Card(base_dir + "/" + config["card"]["name"] + ".txt") as cvt:

        cvt.card_name = config["card"]["name"]
        cvt.card_description = config["card"]["description"]
        cvt.table_name = config["card"]["table"]
        cvt.chapter = config["card"]["chapter"]
        cvt.column_with_subentry = int(config["card"]["column_with_subentry"])
        cvt.words_to_ignore = words_to_ignore

        cvt.read_csv("table.csv")
        cvt.write_dsl()

    with converter.DictCreator(base_dir + "/" + dict_name + ".dsl") as dictionary:
        dictionary.dict_name = dict_name
        dictionary.create_library()
