//
//  Screen2.swift
//  CondoConnect
//
//  Created by Santiago Aragon on 14/04/23.
//

import SwiftUI
import PhotosUI

struct Screen2: View {
    @State var name: String = ""
    @State var lastName: String = ""
    @State private var selectedPhoto: PhotosPickerItem? = nil
    @State var houseNumber: Int = 0
    @State var phoneNumber: Int = 0
    var body: some View {
        VStack{
            Form{
                Section(header: Text( "Nombre" ) ){
                    TextField( "Nombre", text: $name )
                }
                Section(header: Text( "Apellido" ) ){
                    TextField( "Apellido", text: $lastName )
                }
                Section( header: Text( "Foto" ) ){
                    PhotosPicker(
                            selection: $selectedPhoto,
                            matching: .images,
                            photoLibrary: .shared()) {
                                Text("Selecciona una foto")
                            }
                }
                Section( header: Text( "Numero de casa" )){
                    TextField( "Numero de casa", value: $houseNumber, format: .number)
                        .keyboardType(.numberPad)
                }
                Section( header: Text( "Telefono" )){
                    TextField( "Telefono", value: $houseNumber, format: .number)
                        .keyboardType(.numberPad)
                }
                Section{
                    Button(action: {
                      
                    }, label: {
                      HStack {
                        Spacer()
                        Text("Agregar Residente")
                              .bold()
                        Spacer()
                      }
                    })
                  }
                .foregroundColor(.white)
                .background( CustomColors.darkBlue )
                .listRowBackground( CustomColors.darkBlue )
                .frame( alignment: .bottom)
            }
            .navigationTitle("Crear Residente")
            }
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
