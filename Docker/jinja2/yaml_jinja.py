#!/usr/bin/env python3

# Applies YAML to a Jinja file - not much error checking here 

import argparse
import jinja2
import os
import yaml

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('yaml_file')
    parser.add_argument('jinja_file')
    parser.add_argument('output_file')
    args = parser.parse_args()

    with open(args.yaml_file, 'r') as yaml_file:
        input_data = yaml.safe_load(yaml_file.read())

    with open(args.jinja_file, 'r') as jinja_file:
        template = jinja2.Template(jinja_file.read())

    with open(args.output_file, 'w') as output_file:
        output_file.write(template.render(input_data))

    print("Done!")

if __name__=="__main__":
    main()