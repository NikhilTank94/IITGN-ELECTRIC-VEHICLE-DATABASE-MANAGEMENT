#!/usr/bin/python

import MySQLdb

# Open database connection
db = MySQLdb.connect("localhost","root","bhu","sud" )

# prepare a cursor object using cursor() method
cursor = db.cursor()


sql = "SELECT Fname FROM EMPLOYEE"

# execute SQL query using execute() method.
cursor.execute(sql)

# Fetch all the rows in a list of lists.
results = cursor.fetchall()
for row in results:
   fname = row[0]
   
   print "fname=%s"% \
             (fname)


# disconnect from server
db.close()
