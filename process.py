log_file = open("um-server-01.txt")


def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[96:158]
        if day == "Mon":
            print(line)


sales_reports(log_file)

# line 4 is defining sales reports for the txt file.

# line 5 is making it possible to loop through all the data in the txt file.

# line 6 is removing and extra characters at the end of each line (whitespace).

# line 7 is choosing the specific lines that are equal to the day.

# line 8 is specifying the day if equal to the string (days of the week).

# line 9 is printing(console logging) the line data from line 7 and 8.

# line 12 is closing the txt file.

# Extra ccredit
# def sales_reports(log_file):
#     for line in log_file:
#         line = line.rstrip()
#         if melon_total >= 10
#         print(line)
