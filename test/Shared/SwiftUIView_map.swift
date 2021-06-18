//
//  SwiftUIView_map.swift
//  test
//
//  Created by Mac_iparknow on 2021/6/18.
//

import SwiftUI

struct SwiftUIView_map: View {
    @State private var isShowing = false
    var body: some View {
        NavigationView{
            ZStack{
                if isShowing{
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10 )
                    .offset(x: isShowing ? 300 : 0,y:isShowing ? 44 :0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()){
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("home")
            }
        }
    }
}

struct SwiftUIView_map_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView_map()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color(.white)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
        }
    }
}

