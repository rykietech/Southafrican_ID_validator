=begin
    implementation of Luhns algorithm to check if a South African Id is valid
    A South African person identication number is a 13-digit number containing only numeric char-
    acters, and no whitespace, punctuation, or alpha characters. It is dened as YYMMDDSSSSCAZ:
 
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
=end
END{
    puts "Enter your ID: "
    $identi_var = gets
    #puts identi_var.length
    $index_counter = 0
    $array_of_vals = []
    $sum_of_digi_A = 0  #A
    $concat_B = ""      #B
    $sum_of_digi_C = 0  #C
    $var_D = 0          #D
    $check_sum = 0      #Z    
    $index_2 = 0
    $index_3 = 1
    #Checks if the length of id values is equal to 13 
    if $identi_var.length-1 == 13                
        puts "Lets start validating..."
        #loop to push each char into array of vals
        begin
        $array_of_vals.push($identi_var[$index_counter])    
        $index_counter = $index_counter +1    
        end while $index_counter <= $identi_var.length-1
       
=begin
        Calculating A which is the sum of digits in the ID number in odd positions excluding Z
=end    
        begin
           $sum_of_digi_A =$sum_of_digi_A + $array_of_vals[$index_2].to_i
           $index_2 = $index_2 +2 
        end while $index_2 < $array_of_vals.length-2
       #puts $sum_of_digi_A
       #puts $array_of_vals.length-2
=begin
        Calculating B
=end


        begin
           
            $concat_B = $concat_B + $array_of_vals[$index_3]
            $index_3 = $index_3 +2 
        end while $index_3 < $array_of_vals.length-2
        
        #puts $concat_B
=begin
        Calculating C
=end
        $sum_of_digi_C = 2 * $concat_B.to_i
        #puts $sum_of_digi_C.to_s.length-1
        for i in 0..$sum_of_digi_C.to_s.length-1
            $var_D = $var_D + $sum_of_digi_C.to_s[i].to_i
        end
        #puts $var_D
=begin 
        Computing D = A + C
=end        
        $var_D = $var_D + $sum_of_digi_A
        check_sum = 10 - ($var_D%10).to_i
        #puts check_sum
        #puts $array_of_vals[$array_of_vals.length - 2]
        if check_sum == $array_of_vals[$array_of_vals.length - 2].to_i
            puts "This is a valid ID"
        else
            puts "not a valid ID"
        end
    else
        puts "not a valid ID"
    end     

}

BEGIN{
    puts "Implementation of Luhns algorithm.\nChecks if a South African ID is valid."
}