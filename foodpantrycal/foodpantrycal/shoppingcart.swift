//
//  shoppingcart.swift
//  foodpantrycal
//
//  Created by Bailey on 11/21/24.
//

//import SwiftUI
//
//struct shoppingcartView: View {
//    @State private var firstName = ""
//    @State private var lastName = ""
//    
//}

import SwiftUI

struct PracticeView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var studentID = ""

    var body: some View {
        TabView {
            // First Tab: Current Practice View
            VerifyInformationView(firstName: $firstName, lastName: $lastName, studentID: $studentID)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Shop")
                }

            CartView()
                .tabItem {
                    Image(systemName: "cart.fill")
                    Text("Cart")
                }

            PickupView()
                .tabItem {
                    Image(systemName: "calendar.badge.clock")
                    Text("Pickup")
                }
        }
    }
}

// Subviews for Each Tab:
struct VerifyInformationView: View {
    @Binding var firstName: String
    @Binding var lastName: String
    @Binding var studentID: String

    var body: some View {
        VStack {
            Text("Verify Information")
                .font(.headline)
                .padding(.top)

            Image(systemName: "person.crop.circle") // Bear icon placeholder
                .font(.largeTitle)
                .padding(.top)

            VStack(alignment: .leading) {
                TextField("First Name e.g. Oski", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Last Name e.g. Bear", text: $lastName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                TextField("Cal Student ID e.g. 3031234567", text: $studentID)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
            }
            .padding()

            HStack {
                Spacer()
                Text("Ready!")
                    .bold()
                    .foregroundColor(.green)
                Spacer()
            }
            .padding()
            .background(Color.white)
            .cornerRadius(8)
            .padding(.horizontal)

            Spacer()
        }
        .background(Color.blue.opacity(0.7))
        .foregroundColor(.white)
    }
}

struct CartView: View {
    var body: some View {
        VStack {
            Text("Cart Page")
                .font(.largeTitle)
                .padding()
        }
        .background(Color.green.opacity(0.2))
    }
}

struct PickupView: View {
    var body: some View {
        VStack {
            Text("Pickup Page")
                .font(.largeTitle)
                .padding()
        }
        .background(Color.orange.opacity(0.2))
    }
}

struct PracticeView_Previews: PreviewProvider {
    static var previews: some View {
        PracticeView()
    }
}
