

install.packages('sqldf')
library('sqldf')

install.packages('tidyverse')
library('tidyverse')

library('dplyr')

mergeddf <- rbind(X2015, X2016, X2017, X2018, X2019)
view(mergeddf)

sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Notre Dame' OR TEAM_TWO = 'Notre Dame')
     AND VWRS > 4")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Notre Dame' OR TEAM_TWO = 'Notre Dame')
     AND VWRS > 1")

#SEC
#Alabama with 47 games of over 4 million viewers and 64 over 1 million (35 and 52)
#Georgia with 23 and 49 (15 and 40)
#LSU with 24 and 47 (17 and 40)
#Miss with 5 and 29 (4 and 28)
#Miss St with 4 and 30 (3 and 26)
#Auburn with 21 and 43 (18 and 37)
#Arkansas with 5 and 31 (3 and 29)
#TAMU with 13 and 34 (10 and 29)


#Tenn with 16 and 31 (14 and 28)
#GA with 23 and 49 (15 and 40)
#Fla with 23 and 44 (17 and 38)
#Vandy with 0 and 13 (0 and 11)
#S Car with 3 and 23 (2 and 20)
#Missouri with 0 and 16 (0 and 14)
#Kentucky with 3 and 14 (1 and 10)

SEC_Team <- c("Alabama", "LSU", "Mississippi", "Mississippi St.", "Auburn", 
              "Arkansas", "TAMU", "Tennessee", "Georgia", "Florida", "Vanderbilt", 
              "South Carolina", "Missouri", "Kentucky")
Over_1_Million <- c("64", "47", "29", "30", "43", "31", "34", "31", "49", "44", "13", "23", "16", "14")
Over_4_Million <- c("47", "24", "5", "4", "21", "5", "13", "16", "23", "23", "0", "3", "0", "3")

Reg_season_1M <- c("52", "40", "28", "26", "37", "29", "29", "28", "40", "38", "11", "20", "14", "10")
Reg_season_4M <- c("35", "17", "4", "3", "18", "3", "10", "14", "15", "17", "0", "2", "0", "1")
SEC <- data.frame(SEC_Team, Over_1_Million, Over_4_Million, Reg_season_1M, Reg_season_4M)
view(SEC)
arrange(desc(SEC), Reg_season_1M)
starwars %>% arrange(desc(mass))

SEC <- SEC %>% arrange(desc(Over_1_Million))



sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Oregon St.' OR TEAM_TWO = 'Oregon St.')
     AND VWRS > 4")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Utah' OR TEAM_TWO = 'Utah')
     AND VWRS > 1")


#B10(4million, 1million (reg season 4million, 1 million))

#OSU with 41 and 57 (33 and 49)
#Mich with 31 and 51 (26 and 46)
#PSU with 18 and 42 (12 and 36)
#MSU with 13 and 38 (11 and 33)
#Indiana with 7 and 22 (6 and 19)
#Rutgers with 1 and 4 (1 and 4)
#Maryland with 1 and 16 (1 and 15)

#Wiscy with 16 and 42 (9 and 34)
#Nebraska with 8 and 33 (6 and 31)
# Illinois with 1 and 10 (1 and 9)
# NW with 2 and 24 (0 and 19)
#Purdue with 1 and 16 (1 and 14)
#Minn with 5 and 17 (4 and 13)
#Iowa with 11 and 34 (7 and 28 )

install.packages("writexl")
library("writexl")
getwd()

sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'N.C. St.' OR TEAM_TWO = 'N.C. St.')
     AND VWRS > 4 AND BOWL = 'NONE'")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'N.C. St.' OR TEAM_TWO = 'N.C. St.')
     AND VWRS > 1 AND BOWL = 'NONE'")


sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Utah' OR TEAM_TWO = 'Utah')
     AND VWRS > 4")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Utah' OR TEAM_TWO = 'Utah')
     AND VWRS > 1")

write_xlsx(mergeddf,mdpil/OneDrive/Documents/mergeddf.xlsx)

#ACC

#Clemson is 27 and 56 (14 and 42)
#Syracuse is 2 and 16 (1 and 15)
#NC State is 2 and 19
#Wake Forest is 0 and 12 (0 and 8)
#Louisville is 9 and 27 (6 and 23)
#FSU IS 11 AND 42 (9 and 38)
#BC IS 1 AND 11 (0 and 6)

#NC IS 3 AND 21 (1 AND 17)
#Duke is 1 and 9 (1 AND 6)
#Miami is 9 and 31 (5 AND 25)
#GT IS 1 AND 14 (1 and 12)
#Pitt is 3 and 21 (2 and 16)
#Va is 3 and 18 (2 and 13)
#va tech is 8 and 23 (4 and 17)


#Big 12

sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Iowa St.' OR TEAM_TWO = 'Iowa St.')
     AND VWRS > 4")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Iowa State' OR TEAM_TWO = 'Iowa State')
     AND VWRS > 1")


sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Iowa St.' OR TEAM_TWO = 'Iowa St.')
     AND VWRS > 4 AND BOWL = 'NONE'")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Iowa S.t' OR TEAM_TWO = 'Iowa St.')
     AND VWRS > 1 AND BOWL = 'NONE'")

# TCU 5 AND 33 (2 and 28)
# Kansas St 2 and 19 (1 and 14)
# Oklahoma State 7 and 32 (3 and 28)
# baylor is 7 and 29 (4 and 22)
# texas is 11 and 47 (8 and 42)
# Oklahoma is 23 and 57 (14 and 48)
# Kansas is 0 and 6 (0 and 6)
# texas tech is 0 and 21 (0 AND 20)
# West Va is 5 and 29 (4 and 24)
# Iowa St is 2 and 20 (0 and 16)


#pac-12
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Oregon State' OR TEAM_TWO = 'Oregon State')
     AND VWRS > 4")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Oregon State' OR TEAM_TWO = 'Oregon State')
     AND VWRS > 1")

sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'BYU' OR TEAM_TWO = 'BYU')
     AND VWRS > 4 AND BOWL = 'NONE'")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'BYU' OR TEAM_TWO = 'BYU')
     AND VWRS > 1 AND BOWL = 'NONE'")


# Colorado is 2 and 19  (0 and 17)
# Arizona is 0 and 16 (0 and 14)
#Arizona St is 2 and 23 (2 and 19)
# USC IS 10 AND 52 (7 and 46)
# UCLA IS 3 AND 32 (2 and 30)
# Utah is 4 and 30 (1 and 23)
# Cal is 0 and 22 (0 and 19)
# Oregon is 8 and 32 (5 and 27)
# Oregon St is 0 and 3 (1 and 2)
# Stanford is 5 and 35 (3 and 29)
# Wash is 8 and 41  (3 and 34)
# Wash St is 3 and 24 (1 and 21)


#Notre Dame is 21 and  62 (17 and 58)
# BYU IS 0 AND 20 (0 AND 16)




#OSU with 41 and 57 (33 and 49)
#Mich with 31 and 51 (26 and 46)
#PSU with 18 and 42 (12 and 36)
#MSU with 13 and 38 (11 and 33)
#Indiana with 7 and 22 (6 and 19)
#Rutgers with 1 and 4 (1 and 4)
#Maryland with 1 and 16 (1 and 15)

#Wiscy with 16 and 42 (9 and 34)
#Nebraska with 8 and 33 (6 and 31)
# Illinois with 1 and 10 (1 and 9)
# NW with 2 and 24 (0 and 19)
#Purdue with 1 and 16 (1 and 14)
#Minn with 5 and 17 (4 and 13)
#Iowa with 11 and 34 (7 and 28 )

B10_Team <- c("Ohio State", "Michigan", "Penn State", "Wisconsin", "Michigan State", "Iowa", "Nebraska",
              "Northwestern", "Indiana", "Minnesota", "Maryland", "Purdue", "Illinois", "Rutgers")
B10_1_million <- c("57", "51", "42", "42", "38", "34", "31", "24", "22", "17", "16", "16", "10", "4")
B10_4_million <- c("41", "31", "18", "16", "13", "11", "8", "8", "7", "5", "1", "1", "1", "1")
B10_Regsea_1M <- c("49", "46", "36", "34", "33", "28", "31", "19", "19", "13", "15", "14", "9", "4")
B10_Regsea_4M <- c("33", "26", "12", "9", "11", "7", "6", "0", "6", "4", "1", "1", "1", "1")
B10 <- data.frame(B10_Team, B10_1_million, B10_4_million, B10_Regsea_1M, B10_Regsea_4M)
view(B10)

#ACC

#Clemson is 27 and 56 (14 and 42)
#Syracuse is 2 and 16 (1 and 15)
#NC State is 2 and 19 (1 AND 15)
#Wake Forest is 0 and 12 (0 and 8)
#Louisville is 9 and 27 (6 and 23)
#FSU IS 11 AND 42 (9 and 38)
#BC IS 1 AND 11 (0 and 6)

#NC IS 3 AND 21 (1 AND 17)
#Duke is 1 and 9 (1 AND 6)
#Miami is 9 and 31 (5 AND 25)
#GT IS 1 AND 14 (1 and 12)
#Pitt is 3 and 21 (2 and 16)
#Va is 3 and 18 (2 and 13)
#va tech is 8 and 23 (4 and 17)

ACC_Team <- c("Clemson", "Syracuse", "NC State", "Wake Forest", "Louisville", "Florida St", "Boston College",
              "North Carolina", "Duke", "Miami", "Georgia Tech", "Pittsburgh", "Virginia", "Virginia Tech")
ACC_1M <- c("56", "16", "19", "12", "27", "42", "11", "21", "9", "31", "14", "21", "18", "23")
ACC_4M <- c("27", "2", "2", "0", "9", "11", "1", "3", "1", "9", "1", "3", "3", "8")
ACC_Regsea_1M <- c("42", "15", "15", "8", "23", "38", "6", "17", "6", "25", "12", "16", "13", "17")
ACC_Regsea_4M <- c("14", "1", "1", "0", "6", "9", "0", "1", "1", "5", "1", "2", "2", "4")

ACC <- data.frame(ACC_Team, ACC_1M, ACC_4M, ACC_Regsea_1M, ACC_Regsea_4M)

SEC <- SEC %>% arrange(desc(Over_1_Million))
ACC <- ACC %>% arrange(desc(ACC_1M))
view(ACC)

#Big 12

# TCU 5 AND 33 (2 and 28)
# Kansas St 2 and 19 (1 and 14)
# Oklahoma State 7 and 32 (3 and 28)
# baylor is 7 and 29 (4 and 22)
# texas is 11 and 47 (8 and 42)
# Oklahoma is 23 and 57 (14 and 48)
# Kansas is 0 and 6 (0 and 6)
# texas tech is 0 and 21 (0 AND 20)
# West Va is 5 and 29 (4 and 24)
# Iowa St is 2 and 20 (0 and 16)

Big12_Teams <- c("TCU", "Kansas St", "Oklahoma St", "Baylor", "Texas", "Oklahoma", "Kansas", "Texas Tech", 
                 "West Virginia", "Iowa St")
B12_1M <- c("33", "19", "32", "29", "47", "57", "6", "21", "29", "20")
B12_4M <- c("5", "2", "7", "7", "11", "23", "0", "0", "5", "2")
B12_Regsea_1M <- c("28", "14", "28", "22", "42", "48", "6", "20", "24", "16")
B12_Regsea_4M <- c("2", "1", "3", "4", "8", "14", "0", "0", "4", "0")
Big_12 <- data.frame(Big12_Teams, B12_1M, B12_4M, B12_Regsea_1M, B12_Regsea_4M)
Big_12 <- Big_12 %>% arrange(desc(B12_1M))
view(Big_12)


#Pac-12

# Colorado is 2 and 19  (0 and 17)
# Arizona is 0 and 16 (0 and 14)
#Arizona St is 2 and 23 (2 and 19)
# USC IS 10 AND 52 (7 and 46)
# UCLA IS 3 AND 32 (2 and 30)
# Utah is 4 and 30 (1 and 23)
# Cal is 0 and 22 (0 and 19)
# Oregon is 8 and 32 (5 and 27)
# Oregon St is 0 and 3 (1 and 2)
# Stanford is 5 and 35 (3 and 29)
# Wash is 8 and 41  (3 and 34)
# Wash St is 3 and 24 (1 and 21)


#Notre Dame is 21 and  62 (17 and 58)
# BYU IS 0 AND 20 (0 AND 16)

Pac_Teams <- c("Colorado", "Arizona", "Arizona St", "USC", "UCLA", "Utah", "California", "Oregon", "Oregon St",
               "Stanford", "Washington", "Washington St")
Pac_1M <- c("19", "16", "23", "52", "32", "29", "22", "32", "3", "35", "41", "24")
Pac_4M <- c("2", "0", "2", "10", "3", "3", "0", "8", "0", "5", "8", "3")
Pac_Regsea_1M <- c("17", "14", "19", "46", "30", "23", "19", "27", "2", "29", "34", "21")
Pac_Regsea_4M <- c("0", "0", "2", "7", "2", "1", "0", "5", "1", "3", "3", "1")
Pac_12 <- data.frame(Pac_Teams, Pac_1M, Pac_4M, Pac_Regsea_1M, Pac_Regsea_4M)

Big_12 <- Big_12 %>% arrange(desc(B12_1M))
Pac_12 <- Pac_12 %>% arrange(desc(Pac_1M))
view(Pac_12)

Ind_Teams <- c("Notre Dame", "BYU", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE",
               "NONE", "NONE")
Ind_1M <- c("62", "20", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE")
Ind_4M <- c("21", "0", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE")
Ind_Regsea_1M <- c("58", "16", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE",
                   "NONE", "NONE")
Ind_Regsea_4M <- c("17", "0", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE", "NONE",
                   "NONE", "NONE")
Ind_Tms <- data.frame(Ind_Teams, Ind_1M, Ind_4M, Ind_Regsea_1M, Ind_Regsea_4M)
view(Ind_Tms)

Overall_and_Regular_Season_1M_4M <- data.frame(ACC, B10, Big_12, Ind_Tms, Pac_12, SEC)
merged_schools<- rbind(ACC, B10, Big_12, Ind_Tms, Pac_12, SEC)




merged4M1M <- data.frame(SEC, B10, ACC, Big_12, Ind_Tms, Pac_12)
merged4M1M <- merged4M1M %>% arrange(desc())
Big_12 <- Big_12 %>% arrange(desc(B12_1M))
view(Big_12)

merged_cfb1 <- merged_cfb %>% arrange(desc(OVER_1M))
merged_cfb2 <- merged_cfb %>% arrange(desc(OVER_4M))
merged_cfb3 <- merged_cfb %>% arrange(desc(RS_1M))
merged_cfb4 <- merged_cfb %>% arrange(desc(RS_4M))


sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Washington' OR TEAM_TWO = 'Washington')
     AND VWRS > 1")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Washington' OR TEAM_TWO = 'Washington')
     AND VWRS > 1 AND BOWL = 'NONE' AND TEAM_ONE != 'USC' OR TEAM_TWO != 'USC'")

sqldf("SELECT * FROM mergeddf WHERE TEAM_TWO = 'Washington'
AND VWRS > 1 AND TEAM_ONE != 'USC'")



sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Arizona St.' OR TEAM_ONE = 'Arizona State' OR
TEAM_TWO = 'Arizona St.' OR TEAM_TWO = 'Arizona State') AND (NET = 
      'ABC' OR NET = 'NBC' OR NET = 'FOX' OR NET = 'CBS')")

sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Arizona St.' OR TEAM_ONE = 'Arizona State' OR
TEAM_TWO = 'Arizona St.' OR TEAM_TWO = 'Arizona State') AND (NET = 
      'ESPN' OR NET = 'ESPN2')")

sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Arizona St.' OR TEAM_ONE = 'Arizona State' OR
TEAM_TWO = 'Arizona St.' OR TEAM_TWO = 'Arizona State')AND (NET = 'FS1')")


sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Utah' OR TEAM_TWO = 'Utah') AND (NET = 'ABC' OR NET = 'NBC' OR 
      NET = 'FOX' OR NET = 'CBS')")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Utah' OR TEAM_TWO = 'Utah') AND 
      (NET = 'ESPN' OR NET = 'ESPN2')")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Utah' OR TEAM_TWO = 'Utah') AND 
      (NET = 'FS1')")

#avg viewership Overall and on ABC,NBC,FOX,CBS  ESPN/ESPN2   FS1
#Washington 2.96  2.91  4.29  0.81
#Washington St. 1.94  2.81   1.96    0.5
#Oregon St. 0.82   3.99   0.81   0.59
#Oregon 2.86   3.65    2.84   0.78
#USC     2.88  3.24   2.87     1.19
#ucla     1.75  2.51  1.43     0.60
# Stanford 2.43 3.23  2.52     0.69
# Colorado 1.64  3.12  1.52    0.63
# California 1.27    1.95    1.50    0.51
# Arizona 1.04       2.16    1.31    0.49
# Arizona St 1.69    2.50    1.76    0.52
# Utah       1.78    2.68    1.84    0.89


view(Pac_Teams)
Ratings <- c("AVG Viewers", "ABC/NBC/CBS/FOX", "ESPN/ESPN2", "FS1")
OverallPac <- c()




sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Illinois' OR TEAM_TWO = 'Illinois')  
       AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Illinois' OR TEAM_TWO = 'Illinois') AND (NET = 'ABC' OR NET = 'NBC' OR 
       NET = 'FOX' OR NET = 'CBS') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Illinois' OR TEAM_TWO = 'Illinois') AND 
       (NET = 'ESPN' OR NET = 'ESPN2') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Illinois' OR TEAM_TWO = 'Illinois') AND 
      (NET = 'FS1') AND BOWL = 'NONE'")


#          overall   MAJORNETS    ESPNS    FS1
# Ohio St   6.04      6.52        5.02    2.41
# Michigan  5.11      6.02        2.98    1.88
# Mich St   3.24      4.09        3.20    0.60
# Penn St   3.47      4.76        2.41    1.15
# Indiana   2.39      4.04        2.12    0.995
# Maryland  1.36      2.76        1.17    0.85
# Rutgers   1.33      3.45        1.05    0.76

# Wiscy     3.24      4.09        2.04    0.78
# Iowa      2.00      3.82        1.34    0.92
# Minn      1.55      3.96        1.29    0.77
# Purdue    1.35      3.18        0.90    0.53
# Nebraska  2.48      3.73        1.87    1.21
# NW        1.57      2.44        1.59    0.50
# Illinois  1.14      3.57        1.11    0.82


sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Missouri' OR TEAM_TWO = 'Missouri')  
       AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Missouri' OR TEAM_TWO = 'Missouri') AND (NET = 'ABC' OR NET = 'NBC' OR 
       NET = 'FOX' OR NET = 'CBS') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Missouri' OR TEAM_TWO = 'Missouri') AND 
       (NET = 'ESPN' OR NET = 'ESPN2') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Missouri' OR TEAM_TWO = 'Missouri') AND 
      (NET = 'FS1') AND BOWL = 'NONE'")


#          overall   MAJORNETS    ESPNS    FS1
# Alabama   5.88      7.72         3.38    NA
# LSU       4.11      7.16         2.86    NA
# Auburn    4.23      6.78         2.32    NA
# TAMU      3.01      5.18         2.61    NA
# Arkansas  2.58      2.52         2.81    NA
# Ole Miss  2.52      3.60         2.81    NA
# Miss St   2.24      4.09         2.37    0.511

# Georgia   3.74      4.74         2.44    na
# Florida   3.59      4.59         2.96    na
# Tenn      3.55      4.61         2.86    na
# S Car     2.58      3.40         2.45    na
# Kentucky  2.10      3.44         2.04    na
# Vandy     1.64      2.56         1.93    na
# Mizzou    1.67      2.27         1.66    0.79


sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE  (TEAM_ONE = 'Boston Coll.' OR TEAM_ONE = 'Boston College' 
 OR TEAM_TWO = 'Boston Coll.' OR TEAM_TWO = 'Boston College')  
       AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Boston Coll.' OR TEAM_ONE = 'Boston College' 
 OR TEAM_TWO = 'Boston Coll.' OR TEAM_TWO = 'Boston College') AND (NET = 
      'ABC' OR NET = 'NBC' OR NET = 'FOX' OR NET = 'CBS')")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Boston Coll.' OR TEAM_ONE = 'Boston Collegeh' 
 OR TEAM_TWO = 'Boston Coll.' OR TEAM_TWO = 'Boston College') AND (NET = 
      'ESPN' OR NET = 'ESPN2')")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Boston Coll.' OR TEAM_ONE = 'Boston College' 
 OR TEAM_TWO = 'Boston Coll.' OR TEAM_TWO = 'Boston College') AND (NET = 'FS1')")



sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Louisville' OR TEAM_TWO = 'Louisville')  
       AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Louisville' OR TEAM_TWO = 'Louisville') AND (NET = 'ABC' OR NET = 'NBC' OR 
       NET = 'FOX' OR NET = 'CBS') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Louisville' OR TEAM_TWO = 'Louisville') AND 
       (NET = 'ESPN' OR NET = 'ESPN2') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Louisville' OR TEAM_TWO = 'Louisville') AND 
      (NET = 'FS1') AND BOWL = 'NONE'")


#          overall   MAJORNETS    ESPNS    FS1
# Clemson   3.10      4.15         2.19    na
# Duke      1.02      3.63         1.12    0.291
# Miami     1.97      3.89         1.24    0.67
# Ga Tech   1.61      2.94         1.49    na
# UNC       1.48      2.96         1.50    NA
# FSU       2.90      4.17         2.23    NA
# Syracuse  1.76      3.14         1.47    NA

# NC ST     1.66      2.99         1.61    0.606
# Virginia  1.89      3.56         1.22    na
# Va Tech   1.90      3.90         2.30    na
# Pitt      1.70      3.63         1.17    na
# BC        1.35      2.86         1.71    na
# Wake F    1.20      2.23         1.00    na
# Louis     2.30      4.051        1.71    na



sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE  (TEAM_ONE = 'Kansas St.' OR TEAM_ONE = 'Kansas State' 
 OR TEAM_TWO = 'Kansas St.' OR TEAM_TWO = 'Kansas State')  
       AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Kansas St.' OR TEAM_ONE = 'Kansas State' 
 OR TEAM_TWO = 'Kansas St.' OR TEAM_TWO = 'Kansas State') AND (NET = 
      'ABC' OR NET = 'NBC' OR NET = 'FOX' OR NET = 'CBS')")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Kansas St.' OR TEAM_ONE = 'Kansas State' 
 OR TEAM_TWO = 'Kansas St.' OR TEAM_TWO = 'Kansas State') AND (NET = 
      'ESPN' OR NET = 'ESPN2')")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'Kansas St.' OR TEAM_ONE = 'Kansas State' 
 OR TEAM_TWO = 'Kansas St.' OR TEAM_TWO = 'Kansas State') AND (NET = 'FS1')")



sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'BYU' OR TEAM_TWO = 'BYU')  
       AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'BYU' OR TEAM_TWO = 'BYU') AND (NET = 'ABC' OR NET = 'NBC' OR 
       NET = 'FOX' OR NET = 'CBS') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'BYU' OR TEAM_TWO = 'BYU') AND 
       (NET = 'ESPN' OR NET = 'ESPN2') AND BOWL = 'NONE'")
sqldf("SELECT AVG(VWRS) FROM mergeddf WHERE (TEAM_ONE = 'BYU' OR TEAM_TWO = 'BYU') AND 
      (NET = 'FS1') AND BOWL = 'NONE'")


#          overall   MAJORNETS    ESPNS    FS1
# Kansas     0.7      2.38         1.00   0.415
# Oklahoma   3.22     3.77         2.62   1.37
# Texas      2.81     4.25         1.97   1.30
# TCU        1.60     2.81         1.62   0.54
# Okla St    1.80     3.34         1.40   0.63
# Baylor     1.46     3.26         1.49   0.60
# WVa.       1.51     3.27         1.77   0.82
# TexTech    1.30     2,85         1.26   0.60
# Iowa St    1.07     2.92         1.46   0.58
# Kansas St  1.06     2.69         1.84   0.65


sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'UCLA' OR TEAM_TWO = 'UCLA') AND
      (NOTES_ONE = 'Pac-12' AND NOTES_TWO = 'Pac-12') AND BOWL = 'NONE' AND VWRS > 4")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'UCLA' OR TEAM_TWO = 'UCLA') AND
      (NOTES_ONE = 'Pac-12' AND NOTES_TWO = 'Pac-12') AND BOWL = 'NONE' AND VWRS > 1")


#Conf        1M   4M
# USC        39   3
# UCLA       2    22
# Utah       18   0
# Colorado   13   0
# Washington 31   2
# Wash St.   19   1
# Oregonst   1    0
# Oregon     22   2
# Cal        16   0
# Arizona    11   0
# Az St.     15   1
# Stanford   21   0


sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Nebraska' OR TEAM_TWO = 'Nebraska') AND
      (NOTES_ONE = 'Big Ten' AND NOTES_TWO = 'Big Ten') AND BOWL = 'NONE' AND VWRS > 4")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Nebraska' OR TEAM_TWO = 'Nebraska') AND
      (NOTES_ONE = 'Big Ten' AND NOTES_TWO = 'Big Ten') AND BOWL = 'NONE' AND VWRS > 1")


# B10         1M   4M
#OSU          39   27
#MSU          27   9
#PSU          28   12
#Michigan     35   21
#Indiana      18   6
#Maryland     12   1
#Rutgers      4    1

# Wiscy       27   7
# Minn        12   4
# Iowa        24   7
# Illinois    8    1
# NW          15   0
# Purdue      12   1
# Nebraska    24   5



sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'TAMU' OR TEAM_TWO = 'TAMU') AND
      (NOTES_ONE = 'SEC' AND NOTES_TWO = 'SEC') AND BOWL = 'NONE' AND VWRS > 1")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'TAMU' OR TEAM_TWO = 'TAMU') AND
      (NOTES_ONE = 'SEC' AND NOTES_TWO = 'SEC') AND BOWL = 'NONE' AND VWRS > 4")


# SEC         1M   4M
# Alabama     40   30
# LSU         33   14
# Arkansas    26   3
# Auburn      32   14
# Miss St     24   3
# Miss        23   3
# TAMU        24   8

# Georgia     32   13
# Florida     31   13
# Kentucky    9    1
# Tennessee   23   11
# Vanderbilt  10   0
# Missouri    13   0
# S Car       14   1


sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Wake Forest' OR TEAM_TWO = 'Wake Forest') AND
      (NOTES_ONE = 'ACC' AND NOTES_TWO = 'ACC') AND BOWL = 'NONE' AND VWRS > 1")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Wake Forest' OR TEAM_TWO = 'Wake Forest') AND
      (NOTES_ONE = 'ACC' AND NOTES_TWO = 'ACC') AND BOWL = 'NONE' AND VWRS > 4")

sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Boston College' OR TEAM_ONE = 'Boston Coll.'
  OR TEAM_TWO = 'Boston College' OR TEAM_TWO = 'Boston Coll.')  
AND BOWL = 'NONE' AND VWRS > 4")


# ACC         1M   4M
# Duke        4    0
# Clemson     31   9
# FSU         29   6
# Miami       20   2
# Louisville  16   3
# Va Tech     11   2
# UNC         13   1
# Wake Forest 5    0
# Ga Tech     12   1
# Bos Coll    7    0
# Pittsburgh  7    2
# NC St       14   1
# Virginia    3    0
# Syracuse    10   0


sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Kansas State' OR TEAM_TWO = 'Kansas State') AND
      (NOTES_ONE = 'Big 12' AND NOTES_TWO = 'Big 12') AND BOWL = 'NONE' AND VWRS > 1")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Kansas St.' OR TEAM_TWO = 'Kansas St.') AND
      (NOTES_ONE = 'Big 12' AND NOTES_TWO = 'Big 12') AND BOWL = 'NONE' AND VWRS > 4")

# Big 12      1M    4M
# Kansas      6     0
# Oklahoma    39    9
# Texas       33    4
# TCU         21    1
# Okla St     26    3
# Baylor      19    4
# West Va     21    2
# Texas Tech  15    0
# Iowa St     13    0
# kansas St   12    1

# End project here


install.packages('ggplot')
library('ggplot2')

B10_Reg_Overall %>%
  ggplot(aes(SCHOOL, `1M_TOT`))+
  geom_bar(stat = 'identity', position = "dodge", alpha = 0.5)+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "Big Ten Viewership by School",
       x = "School", y = "Viewers in Millions")+
  geom_label(aes(label = 1M_TOT))


Confregandoverall %>%
  ggplot(aes(SCHOOL, y = OneM_TOT, fill = SCHOOL))+
  geom_bar(stat = 'identity', position = "dodge", alpha = 1)+
  scale_fill_manual(values = c("Illinois" = "orange", "Indiana" = "red",
                               "Iowa" = "black", "Maryland" = "yellow", "Michigan" = "blue",
                               "Michigan St." = "green", "Minnesota" = "maroon", "Nebraska" = "dark red",
                               "Northewestern" = "purple", "Ohio St." = "dark red", 
                               "Penn St." = "gray", "Purdue" = "Gold", "Rutgers" = "pink",
                               "Wisconsin" = "red"))+
  theme_bw()+
  theme(panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())+
  labs(title = "Big Ten Viewership by School",
       x = "School", y = "Viewers in Millions")+
  geom_label(aes(label = OneM_TOT))


# Finding numbers for Conference totals and averages

sqldf("SELECT avg(VWRS) FROM mergeddf WHERE (NOTES_ONE = 'Pac-12' OR NOTES_TWO = 'Pac-12') 
      AND BOWL = 'NONE'")

# Conference Only Games
# Big 12   1.69     1.78
# Pac-12   1.57     1.80
# ACC      1.79     2.11
# SEC      3.73     3.22
# Big Ten  3.11     2.76

# Games involving a Conference team

# Total CFB where teams avg 1 or 4 million:

sqldf("SELECT * FROM mergeddf WHERE BOWL = 'NONE' AND VWRS > 1 ORDER BY")
sqldf("SELECT * FROM mergeddf WHERE (TEAM_ONE = 'Kansas St.' OR TEAM_TWO = 'Kansas St.') AND
      (NOTES_ONE = 'Big 12' AND NOTES_TWO = 'Big 12') AND BOWL = 'NONE' AND VWRS > 4")

