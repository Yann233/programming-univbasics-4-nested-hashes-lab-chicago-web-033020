#This method should return the value of the :grace_hopper key inside programmer_hash.
def hopper
	programmer_hash =
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:grace_hopper]
end
##################################
# What combination of keys would you use to return the
#value of the :known_for key of :alan_kay?
def alan_kay_is_known_for
#This method should return the language that Dennis Ritchie is known for.
#Note: The :languages keys inside programmer_hash each store an array.
#In this case, the test is looking for the value stored in that array.
	programmer_hash =
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:alan_kay][:known_for]
    #参考资料：http://www.korenlc.com/nested-arrays-hashes-loops-in-ruby/
end

def dennis_ritchies_language
	programmer_hash =
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]#This is ARRAY!
      }
    }
    programmer_hash[:dennis_ritchie][:languages].join("")
    #也可以这样
    # newArray = programmer_hash[:dennis_ritchie][:languages]
		# newArray.join
end
##################################
=begin
add the following information to the top level of programmer_hash
 :yukihiro_matsumoto => {
   :known_for => "Ruby",
   :languages => ["LISP", "C"]
 }
 return the entire updated hash
=end
def adding_matz
	programmer_hash =
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:yukihiro_matsumoto]={:known_for=>"Ruby",:languages => ["LISP", "C"]}
    #或者
    #programmer_hash[:yukihiro_matsumoto]={known_for: "Ruby", languages: ["LISP, C"]}
    programmer_hash
  end
#########################################
def changing_alan
  # change what Alan Kay is :known_for to the value of the alans_new_info variable.
  # return the entire updated hash
	programmer_hash =
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:alan_kay][:known_for] = "GUI"#这个是把OO覆盖成GUI
    #programmer_hash[:alan_kay]={:known_for=>"GUI"}#这个是把整个known_for重写
    programmer_hash
end
###########################################
def adding_to_dennis
  # add "Assembly" to Dennis Ritchie's languages array
  # return the entire updated hash
	programmer_hash =
 		{
      :grace_hopper => {
        :known_for => "COBOL",
        :languages => ["COBOL", "FORTRAN"]
      },
      :alan_kay => {
        :known_for => "Object Orientation",
        :languages => ["Smalltalk", "LISP"]
      },
      :dennis_ritchie => {
        :known_for => "Unix",
        :languages => ["C"]
      }
    }
    programmer_hash[:dennis_ritchie][:languages] <<"Assembly"
    programmer_hash
end
