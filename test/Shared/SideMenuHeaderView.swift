//
//  SideMenuHeaderView.swift
//  Iparknow
//
//  Created by Mac_iparknow on 2021/6/18.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack (alignment:.topTrailing){
            
            Button(action: {
                withAnimation(.spring()){
                    isShowing.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 100, height: 100)
                    .foregroundColor(.white)
                    .padding()
            })
            VStack(alignment: .leading){
                Image("paris")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .padding(.bottom,16)
                
                Text("User Name")
                    .font(.system(size: 24,weight:.semibold))
                
                Text("@mail.com")
                    .font(.system(size: 14))
                    .padding(.bottom,24)
                HStack{
                    Spacer()
                }
                
                Spacer()
            }
            .foregroundColor(.white)
            .padding()
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
