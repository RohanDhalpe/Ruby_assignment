# regex to get name , email & phone-number from a string

formData = "My name is Rohan Dhalpe gender: M. You can contact me at email: rohan.dhalpe@joshsoftware.com or my work phone: 8010317758 i get paid $5000"
  
name = "name : " + formData.match(/My name is (\w+ \w+)/)[1].to_s
email = "email : " + formData.match(/email: (\w+@\w+\.\w+)/)[1].to_s
phone = "phone : " + formData.match(/phone: (\d+)/)[1].to_s
gender = formData.match(/gender: \w/).to_s
amount = "amount : " + formData.match(/\$(\d+)/).to_s


# display
puts name , gender , email , phone , amount
