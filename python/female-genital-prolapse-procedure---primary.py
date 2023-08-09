# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"11863.0","system":"med"},{"code":"12255.0","system":"med"},{"code":"14872.0","system":"med"},{"code":"15703.0","system":"med"},{"code":"16175.0","system":"med"},{"code":"1652.0","system":"med"},{"code":"17020.0","system":"med"},{"code":"1750.0","system":"med"},{"code":"18606.0","system":"med"},{"code":"18931.0","system":"med"},{"code":"19050.0","system":"med"},{"code":"2060.0","system":"med"},{"code":"20632.0","system":"med"},{"code":"21695.0","system":"med"},{"code":"2286.0","system":"med"},{"code":"2287.0","system":"med"},{"code":"2447.0","system":"med"},{"code":"2576.0","system":"med"},{"code":"27604.0","system":"med"},{"code":"28040.0","system":"med"},{"code":"28602.0","system":"med"},{"code":"3145.0","system":"med"},{"code":"33955.0","system":"med"},{"code":"3420.0","system":"med"},{"code":"37274.0","system":"med"},{"code":"4163.0","system":"med"},{"code":"4233.0","system":"med"},{"code":"44748.0","system":"med"},{"code":"46339.0","system":"med"},{"code":"48218.0","system":"med"},{"code":"5004.0","system":"med"},{"code":"52417.0","system":"med"},{"code":"5351.0","system":"med"},{"code":"5669.0","system":"med"},{"code":"57237.0","system":"med"},{"code":"631.0","system":"med"},{"code":"66379.0","system":"med"},{"code":"67132.0","system":"med"},{"code":"69708.0","system":"med"},{"code":"72070.0","system":"med"},{"code":"7919.0","system":"med"},{"code":"826.0","system":"med"},{"code":"83479.0","system":"med"},{"code":"83494.0","system":"med"},{"code":"84375.0","system":"med"},{"code":"89708.0","system":"med"},{"code":"89963.0","system":"med"},{"code":"9071.0","system":"med"},{"code":"96345.0","system":"med"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('female-genital-prolapse-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["female-genital-prolapse-procedure---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["female-genital-prolapse-procedure---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["female-genital-prolapse-procedure---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
