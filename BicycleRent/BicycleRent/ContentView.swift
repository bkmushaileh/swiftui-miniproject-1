//
//  ContentView.swift
//  BicycleRent
//
//  Created by Khaled Al-Mushaileh on 1/2/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            List{
                Text("مرحبا بك .. يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                    .font(.system(size: 15))
                BicycleRow(bicycleImage: "1")
                BicycleRow(bicycleImage: "2")
                BicycleRow(bicycleImage: "3")
                BicycleRow(bicycleImage: "4")
                BicycleRow(bicycleImage: "5")
               

                
                
            }.navigationTitle("تأجير الدراجات")
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}

struct BicycleRow: View {
    var bicycleImage : String
    var body: some View {
        HStack{
            Text(bicycleImage)
                .padding()
                .background(Color("AccentColor"))
                .clipShape(Circle())
                .foregroundColor(.white)
            Image(bicycleImage)
                .resizable()
                .frame(width: 70, height: 70)
                .padding()
            NavigationLink(
                destination: SecondView(),
                label: {
                    Spacer()
                    Text("")
                    
                })
            
        }
    }
}
