//
//  ContentView.swift
//  TextField
//
//  Created by Sameer SoftRefine on 20/03/20.
//  Copyright © 2020 ample-arch. All rights reserved.
//

//
//  ContentView.swift
//  swift_Form
//
//  Created by Sameer SoftRefine on 20/03/20.
//  Copyright © 2020 ample-arch. All rights reserved.
//

import SwiftUI
struct ContentView: View {

    @State var email: String = ""
    @State var password: String = ""
    @State private var showingAlert = false

    var body: some View{

    VStack {
        HStack {
            Image("DarkImage")
            .resizable()
            .frame(width: 100, height: 100, alignment: .center)
            
            .clipShape(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.red, lineWidth: 5))
        }
        TextField("Email", text: $email).foregroundColor(Color("DarkColor"))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            .frame(width: 300, height: 60)
            .keyboardType(UIKeyboardType.emailAddress)

        SecureField("password", text: $password).foregroundColor(Color("DarkColor"))
            .padding()
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 300, height: 60)
            .padding(.bottom, 10)
            .keyboardType(UIKeyboardType.alphabet)


        Button(action: {
            self.showingAlert = true

        }) {
            HStack {
                Text("Submit").foregroundColor(Color("DarkColor"))
            }
         .frame(minWidth: 0, maxWidth: .infinity)
         .padding()
         .foregroundColor(.white)
            .background(Color.yellow)
         .frame(width: 300, height: 60)
         .cornerRadius(30.0)
         .shadow(radius: 5.0)
            }

        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
        }
        }
    }
}


