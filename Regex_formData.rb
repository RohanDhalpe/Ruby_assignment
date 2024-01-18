form_data = "My name is abc gender: M. You can contact me at email: abc.bcd@xyz.com or my work phone: 1234567890 i get paid $5000"

full_name = "Name: " + form_data.match(/My name is (\p{L}+\s\p{L}+)/i)[1].to_s
email_address = "Email: " + form_data.match(/email:\s?(\S+@\S+\.\S+)/i)[1].to_s
phone_number = "Phone: " + form_data.match(/phone:\s?(\d{10,})/)[1].to_s
gender = "Gender: " + form_data.match(/gender:\s?(\w)/i)[1].to_s
amount_paid = "Amount: " + form_data.match(/\$([\d,]+)/)[1].to_s

# Display
puts full_name, gender, email_address, phone_number, amount_paid

