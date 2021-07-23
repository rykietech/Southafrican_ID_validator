# Southafrican_ID_validator
Tests whether a south_african id is valid
implementation of Luhns algorithm to check if a South African Id is valid
A South African person identification number is a 13-digit number containing only numeric char-
acters, and no whitespace, punctuation, or alpha characters. It is denoted as YYMMDDSSSSCAZ:

* YYMMDD represents the date of birth (DoB);
* SSSS is a sequence number registered with the same birth date (where females are assigned
sequential numbers in the range 0000 to 4999 and males from 5000 to 9999);
* C is the citizenship with 0 if the person is a SA citizen, 1 if the person is a permanent
resident;
* A is 8 or 9. Prior to 1994 this number was used to indicate the holder's race;
* Z is a checksum digit.

Using ID Number 8001015009087 as an example, it would read as follows: the ID indicates
that a male citizen was born on 1 January 1980; he was the 10th male to be registered (assum-
ing that the rst male to be registered on that day would be assigned the sequence number 5000).
Counting positions from 1 to 13 from left to right, the checksum digit is calculated using the
Luhn algorithm as follows:

* A = The sum of the digits in the ID number in the odd positions (excluding Z)
* B = The number formed by the concatenation of the digits in the ID number in the even
positions
* C = The sum of the digits in (2 * B)
* D = A + C
* Z = 10 - (D mod 10)   
