//
//  AddChallengeView.swift
//  ProjetMobile
//
//  Created by manel zaabi on 7/11/2023.
//

import SwiftUI


struct AddChallengeView: View {
    @State private var title = ""
        @State private var description = ""
        @State private var date = Date()
        @State private var selectedImage: Image?
       @State private var showImagePicker = false
    var body: some View {
        NavigationView {
            
                   Form {
                       Section(header: Text("Informations du défi")) {
                           TextField("Titre", text: $title)
                           TextField("Description", text: $description)
                           DatePicker("Date", selection: $date, in: Date()...)
                     Text("Image du défi")
                                          if selectedImage != nil {
                                              selectedImage?
                                                  .resizable()
                                                  .scaledToFit()
                                                  .frame(height: 150) // Ajustez la taille de l'aperçu selon vos besoins
                                          }
                                          Button("Sélectionner une image") {
                                              self.showImagePicker = true
                                          }
                                          .sheet(isPresented: $showImagePicker) {
                                              ImagePicker(selectedImage: $selectedImage)
                                          }
                                      }
                       
                       Button(action: {
                           // Ajoutez ici la logique pour enregistrer le défi dans la base de données
                       }) {
                           Text("Enregistrer")
                           
                               
                       }
                           NavigationLink(destination: ChallengeView()) {
                               Text("Consulter liste des defis")
                                  
                           }
                       NavigationLink(destination: ViewDetailsD()) {
                           Text("Consulter details Challenge")
                              
                       }
                           

                   }
            
                   .navigationTitle("Ajouter un défi")
            
               }
    }
}

struct AddChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        AddChallengeView()
    }
}
struct ImagePicker: UIViewControllerRepresentable {
    @Binding var selectedImage: Image?
    @Environment(\.presentationMode) var presentationMode
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        var parent: ImagePicker
        
        init(_ parent: ImagePicker) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let uiImage = info[.originalImage] as? UIImage {
                parent.selectedImage = Image(uiImage: uiImage)
            }
            parent.presentationMode.wrappedValue.dismiss()
        }
    }
}
