# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2023.

import sys, csv, re

codes = [{"code":"7D17.00","system":"readv2"},{"code":"7D17y00","system":"readv2"},{"code":"7D17z00","system":"readv2"},{"code":"7D18.00","system":"readv2"},{"code":"7D18500","system":"readv2"},{"code":"7D18z00","system":"readv2"},{"code":"7D19.00","system":"readv2"},{"code":"7D19000","system":"readv2"},{"code":"7D19100","system":"readv2"},{"code":"7D19200","system":"readv2"},{"code":"7D19400","system":"readv2"},{"code":"7D19500","system":"readv2"},{"code":"7D19600","system":"readv2"},{"code":"7D19700","system":"readv2"},{"code":"7D19z00","system":"readv2"},{"code":"7D1B.00","system":"readv2"},{"code":"7D1B000","system":"readv2"},{"code":"7D1B100","system":"readv2"},{"code":"7D1B300","system":"readv2"},{"code":"7D1B500","system":"readv2"},{"code":"7D1B600","system":"readv2"},{"code":"7D1By00","system":"readv2"},{"code":"7D1Bz00","system":"readv2"},{"code":"K510.00","system":"readv2"},{"code":"K510z00","system":"readv2"},{"code":"K511.00","system":"readv2"},{"code":"K511z00","system":"readv2"},{"code":"K512.00","system":"readv2"},{"code":"K513.00","system":"readv2"},{"code":"K515.00","system":"readv2"},{"code":"K516.00","system":"readv2"},{"code":"K516100","system":"readv2"},{"code":"K516z00","system":"readv2"},{"code":"SP07900","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('female-genital-prolapse-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["uterovaginal-female-genital-prolapse---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["uterovaginal-female-genital-prolapse---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["uterovaginal-female-genital-prolapse---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
