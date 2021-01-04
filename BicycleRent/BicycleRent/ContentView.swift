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
            ZStack{
                Text("مرحبا بك .. يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                    .font(.system(size: 15))
                
            List(bicycles){ bicycle in
                NavigationLink(
                    destination: SecondView(bicycle:bicycle),
                    label: {
                        BicycleRow(bicycle:bicycle)

                        
                    })
               

                
                
            }.navigationBarTitle("تأجير الدراجات")
            }
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
    let bicycle: Bicycle
    var body: some View {
        HStack{
            Text(bicycle.name)
                .padding()
                .background(Color.blue)
                .clipShape(Circle())
                .foregroundColor(.white)
            Image(bicycle.name)
                .resizable()
                .frame(width: 70, height: 70)
                .padding()
            
        }
    }
}
