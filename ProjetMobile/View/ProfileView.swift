import SwiftUI

struct ProfileView: View {
    @State private var isEditing = false
    @State private var description = ""
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var datebirth = ""
    @State private var phone = ""
    @State private var dateOfBirth = Date()
    @State private var dateOfBirthText = ""

    var body: some View {
        VStack {
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .padding()
            
            Text("Username")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            
            
            if isEditing {
                
                TextField("Edit your description", text: $description)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("First Name", text: $firstname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Last Name", text: $lastname)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Email Adress", text: $datebirth)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                TextField("Phone number", text: $phone)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
            } else {
                Text("No Description")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding()
                Text("First Name")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding()
                Text("Last Name")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding()
                Text("Date of birth")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding()
                Text("Phone Number")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .padding()
            }
            
            if isEditing {
                            DatePicker("Date of birth", selection: $dateOfBirth, displayedComponents: .date)
                                .datePickerStyle(DefaultDatePickerStyle())
                                .padding()
                                .foregroundColor(.gray)
                        } else {
                            Text("Date of Birth \(dateOfBirthText)")
                                .font(.title3)
                                .foregroundColor(.gray)
                                .padding()
                        }
            
            

            Button(action: {
                isEditing.toggle()
            }) {
                Text(isEditing ? "Save" : "Edit Profile")
                    .font(.title2)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }.padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
