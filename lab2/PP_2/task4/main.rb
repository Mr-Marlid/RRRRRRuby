require_relative 'students_list_json'
require_relative 'students_list_yaml'


sl_json = StudentListJSON.new('task4/students_set.json')
sl_yaml = StudentListYAML.new('task4/students_set.yaml')





sl_json.write_to_file('task4/output_file.json')
sl_yaml.write_to_file('task4/output_file.yaml')



