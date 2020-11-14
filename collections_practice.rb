# ## Question 1: `#sort_array_asc`

# Build a method `sort_array_asc` that takes in an array of integers and returns a copy of the array with the integers in ascending order.


def sort_array_asc(array_of_integers)
    array_of_integers.sort
end


#  Question 2: `#sort_array_desc`

# Build a method `sort_array_desc` that takes in an array of integers and returns a copy of the array with the integers in descending order. Remember that `.sort` takes a block in which you can specify how you want your array sorted.


def sort_array_desc(array_of_integers)
    array_of_integers.sort.reverse
end

#  Question 3: `#sort_array_char_count`

# Build a method `sort_array_char_count` that takes in an array of strings and returns a copy of the array with the strings ordered in ascending order by length. Remember that `.sort` takes a block in which you can specify how you want your array sorted.

def sort_array_char_count(array_of_names)
    array_of_names.sort_by(&:length)
end

#  Question 4: `#swap_elements`

# Build a method `swap_elements` that takes in an array and swaps the second and third elements. Remember that array indices start at `0`, so the second element has an index of `1` and the third element has an index of `2`.

# **Advanced:** *Try building a method* `swap_elements_from_to` *that takes in three arguments,* `array, index, destination_index`*, that will allow you to specify the index of the element you would like to move to a new index. So:*

# ```ruby
# swap_elements_from_to(["a", "b", "c"],0,2) #=> ["c", "b", "a"]
# swap_elements_from_to(["a", "b", "c"],2,1) #=> ["a", "c", "b"]
# ```

# **Advanced #2:** *Try writing test coverage for it!*

        def swap_elements(elements)
            newElements = elements[0],elements[2],elements[1]
        end


#  Question 5: `#reverse_array`

# Build a method `reverse_array` that takes in an array of integers and returns a copy of the array with the elements in reverse order.

def reverse_array(array)
    array.reverse
end

#  Question 6: `#kesha_maker`

# Build a method called `kesha_maker` that takes in an array of strings and replaces the third character in each string with a `$` ("dollar sign")—Ke$ha style. Use the `.each` method to iterate and build a new array to return at the end of your method, just like we did in the "My Each" lab.


def kesha_maker(array)
    # array.each.collect {|name| name.gsub(name[2], "$")}
    array.each {|name| name[2] = "$"}     
end

#  Question 7: `#find_a`

# Build a method `find_a` that returns all the strings in the array passed to it that `start_with?` (**hint**) the letter `"a"`. You'll want to use a high level iterator for this that finds, selects, or detects elements based on a condition.

def find_a(array)

    array.select{|name| name.start_with?("a")}
    # array.select {|name| name[0] == "a"}
end


#  Question 8: `#sum_array`

# Build a method `sum_array` that adds together all of the integers in the array and returns their sum.

# **Advanced:** *Try using the* `.inject` *method here.*


def sum_array(array)
    # array.sum
    array.inject(:+)
end



#  Question 9: `#add_s`

# Build a method that adds an `"s"` to each word in the array except for the second element in the array ("feet" is already plural).

# def add_s(array)
#     array.except("feet").each do |word|
#         word.each {|name| name.concat("s")} 
#   end
# end




# def add_s(array)
    
#     array.index(1) == "feet" ? "feet" : array.each.(0) {|name| name.concat("s")} 
    
# end    



def add_s(array, addS = 's', except_index = 1)
    array.each_index do |i|
        unless i == except_index
        array[i] << addS
        end
    end
end
       


