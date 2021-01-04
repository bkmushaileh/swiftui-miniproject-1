//
//  ThirdView.swift
//  BicycleRent
//
//  Created by Khaled Al-Mushaileh on 1/5/21.
//

import SwiftUI

struct ThirdView: View {
    let name : String
    let mobile : String
    let hours : Int
    let price : Int
    @State private var didClick:Bool = false
  
    
    var body: some View {
        VStack{
            Text("الفاتورة")
                .font(.largeTitle)
                .bold()
            HStack{
                Text("الاسم")
                Spacer()
                Text(name)
            }.padding()
            HStack{
                Text("الساعات")
                Spacer()
                Text(String(hours))
            }.padding()
            HStack{
                Text("رقم الهاتف")
                Spacer()
                Text(mobile)
            }.padding()
            HStack{
                Text("المبلغ")
                Spacer()
                Text(String(price))
            }.padding()
            Spacer()
            Button(action: {
                self.didClick = true
            })
            {
                Text("ادفع الان").onTapGesture{
                    
                }
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(15.0)
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 300, height: 50)
            .background(Color.green)
            .cornerRadius(15.0)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(name : "Bashayer", mobile:"1", hours: 0, price: 0)
            .previewDevice("iPhone 12")
    }
}
