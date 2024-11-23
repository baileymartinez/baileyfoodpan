//
//  practice.swift
//  foodpantrycal
//
//  Created by Bailey on 11/21/24.
//

import SwiftUI

struct practiceView: View {
    //@State private var selectedDate = Date() // To store the selected date
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var studentID = ""

    var body: some View {
        VStack {
//            
//            Text("Schedule Pickup")
//                .font(.title)
//                .bold()
//                .padding(.top)


            Text("Verify Information")
                .font(.headline)
                .padding(.top)
            
            Image(systemName: "profilepicture") // bear icon
                .font(.largeTitle)
                .padding(.bottom)
            
            VStack(alignment: .leading) {
                TextField("First Name e.g. Oski", text: $firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                       // .foregroundColor(.green)
                
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
            .background(Color.white)/*gray.opacity(0.9))*/
            .cornerRadius(8)
            .padding(.horizontal)

            Spacer()

            HStack {
                Spacer()
                VStack {
                    Image(systemName: "house")
                    Text("Shop")
                }
                Spacer()
                VStack {
                    Image(systemName: "cart")
                    Text("Cart")
                }
                Spacer()
                VStack {
                    Image(systemName: "calendar")
                    Text("Pickup")
                }
                Spacer()
            }
//            .padding()
            //.background(Color.blue.opacity(0.8))
//            .foregroundColor(.white)
        }
//        .padding()
        .background(Color.blue.opacity(0.7))
        .foregroundColor(.white)
        
    }
    // .background(Color.blue.opactity(0.8))
}


struct practiceView_Previews: PreviewProvider {
    static var previews: some View {
        practiceView()
    }
}
