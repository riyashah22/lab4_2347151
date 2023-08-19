import xmlschema

xml_file = "employees.xml"
xsd_file = "employee_schema.xsd"

validator = xmlschema.XMLSchema(xsd_file)
if validator.is_valid(xml_file):
    print("XML file is valid against the XSD schema.")
else:
    print("XML file is not valid against the XSD schema.")
    print(validator.validate(xml_file))
    for error in xmlschema.error_log:
        print(f"  Line {error.line}, Column {error.column}: {error.message}")
