//
//  SecondView.swift
//  BicycleRent
//
//  Created by Khaled Al-Mushaileh on 1/2/21.
//

import SwiftUI

struct SecondView: View {
    @State var name = ""
    @State var mobile = ""
    @State var hours = 0
    @State var count = 0
    let bicycle:Bicycle
    var body: some View {
        NavigationView{
        VStack {
            Image(bicycle.name)
                .resizable()
                .frame(width: 200, height: 200)
            TextField("اسم المستلم" , text: $name)
            TextField("الهاتف", text: $mobile)
            
            HStack(spacing: 112){
                Stepper("" , value: $hours , in: 0...24)
                Text("عدد الساعات"+" \(hours)")
            }.padding()
            HStack(spacing: 110){

                Stepper("" , value: $count , in: 0...24)
                Text("عدد الدراجات"+" \(count)")

               
            }.padding()
            
            Spacer()
            if hours >= 1 && count >= 1{
                Text(price(hours: hours, number: count))

                let totalprice = Int(price(hours: hours, number: count))
                Text("المبلغ الكلي")
                NavigationLink(
                    destination: ThirdView(name: name, mobile: mobile, hours: hours, price: totalprice!),
                    label: {
                        Text("اضغط للمتابعة")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(15.0)

                        
                    })
            }
            else{
                Text("0.00")
                Text("المبلغ الكلي")

            }
            
                       
            
            
        
        }.padding()
        }
    }
    
    func price ( hours : Int , number : Int) -> String
    {
        
        return String (hours * number * 10)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(bicycle: Bicycle(name: "2"))
            .previewDevice("iPhone 12")
    }
}
