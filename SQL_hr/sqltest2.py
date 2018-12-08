import cx_Oracle
import xlsxwriter

con = cx_Oracle.connect('northwind/password@192.168.0.19:1521/xe')
cur = con.cursor()
sql=""" SELECT CITY,COMPANYNAME,CONTACTNAME FROM CUSTOMERS WHERE CITY < 'C' ORDER BY CONTACTNAME"""
cursor= cur.execute(sql)

workbook = xlsxwriter.Workbook('YourResults.xlsx')
worksheet = workbook.add_worksheet()

row = 0
col = 0

for row_data in cursor:
    worksheet.write(row, col, row_data[0])
    worksheet.write(row, col + 1, row_data[1])
    worksheet.write(row, col + 2, row_data[2])
    row += 1
    print (row)
workbook.close()

con.close()

