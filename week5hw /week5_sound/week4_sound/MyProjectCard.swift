//
//  MyProjectCard.swift
//  0227
//
//  Created by Joann Myung on 2/27/23.
//

import SwiftUI

struct MyProjectCard : View {
    
    @State var shouldShowAlert : Bool = false
    
    var body: some View{
        
        VStack(alignment: .leading, spacing:0){
            Rectangle().frame(height:0)
            Text("Joann's Playground")
                .font(.system(size:23))
                .fontWeight(.black)
                .padding(.bottom,5)
            Text("10 AM - 11AM")
                .foregroundColor(.secondary)
            Spacer().frame(height: 20)
//                .padding(.bottom,10)
            HStack{
                Image("1")
                    .resizable()
                    .frame(width:50, height:50)
                    .clipShape(Circle())
                Image("2")
                    .resizable()
                    .frame(width:50, height:50)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width:50, height:50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action:{
                    print("you have joined")
                    
                    self.shouldShowAlert = true
                }){
                    Text("Join")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width:120)
                        .background(Color.blue)
                        .cornerRadius(20)
                }.alert(isPresented: $shouldShowAlert){
                    Alert(title: Text("You'ved been added!"))
                }
                }
            }
     
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
            
    }
}

struct MyProjectCard_Previews: PreviewProvider {
    static var previews: some View {
        MyProjectCard()
    }
}
