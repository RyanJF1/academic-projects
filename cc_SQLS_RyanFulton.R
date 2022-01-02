StartHere("Ryan Fulton","Workshop",date())

w3a = sqldf("SELECT state FROM irs")
tail(w3a)

w3b = sqldf("SELECT DISTINCT state FROM irs")
tail(w3b)

w3c = sqldf("SELECT DISTINCT state FROM zp")

w3d = sqldf("SELECT zipcode, n1, numdep, aagi
            FROM irs
            WHERE zipcode='30303'")
tail(w3d)

w3e = sqldf("SELECT zipcode, n1, numdep, aagi
            FROM irs
            WHERE zipcode='90210'")
tail(w3e)

w4a = sqldf("SELECT state, n1, numdep, aagi
            FROM irs
            WHERE state='GA'")
tail(w4a)

w4b = sqldf("SELECT state, sum(n1), sum(numdep), sum(aagi)
            FROM irs
            WHERE state='GA'")
tail(w4b)

w5a = sqldf("SELECT state, city, zipcode
            FROM zp
            WHERE city='ATLANTA'")
head(w5a)

w5b = sqldf("SELECT state, city, zipcode
            FROM zp
            WHERE city='ATLANTA'
            AND state='GA'")
head(w5b)

w5c = sqldf("SELECT zp.state, zp.city, irs.n1
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='ATLANTA' AND zp.state='GA'")
tail(w5c)

w5d = sqldf("SELECT zp.state, zp.city, SUM(irs.n1)
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='ATLANTA' AND zp.state='GA'")
tail(w5d)

w5e = sqldf("SELECT zp.state, zp.city, SUM(irs.n1), SUM(irs.numdep)
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='ATHENS' AND zp.state='GA'")
tail(w5e)

StartHere("Ryan Fulton","CC",date())

cc2 = sqldf("SELECT zp.state, zp.city, SUM(irs.n1)
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='DECATUR' AND zp.state='GA'")
cc2

cc3 = sqldf("SELECT zp.state, zp.city, SUM(irs.aagi)
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='AUGUSTA' AND zp.state='GA'")
cc3

cc4 = sqldf("SELECT zp.state, zp.city, SUM(numdep)
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='ATHENS' AND zp.state='AL'")
cc4

cc5 = sqldf("SELECT zp.state, zp.city, SUM(numdep)
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='MACON' AND zp.state='GA'")
cc5

cc6 = sqldf("SELECT zp.city, SUM(irs.n1)
            FROM zp
            JOIN irs ON zp.zipcode=irs.zipcode
            WHERE zp.city='ATLANTA'")
cc6

cc7a = sqldf("SELECT zp.state, (sum(irs.aagi)*1000.0)/sum(irs.n1)
             FROM zp
             JOIN irs ON zp.zipcode=irs.zipcode
             WHERE zp.state='WV'")
cc7a

cc7b = sqldf("SELECT zp.state, (sum(irs.aagi)*1000.0)/sum(irs.n1)
             FROM zp
             JOIN irs ON zp.zipcode=irs.zipcode
             WHERE zp.state='OH'")
cc7b

cc7c = sqldf("SELECT zp.state, (sum(irs.aagi)*1000.0)/sum(irs.n1)
             FROM zp
             JOIN irs ON zp.zipcode=irs.zipcode
             WHERE zp.state='NC'")
cc7c




