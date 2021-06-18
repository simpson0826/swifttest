//
//  ContentView.swift
//  Shared
//
//  Created by Mac_iparknow on 2021/6/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(
                    destination: SwiftUIView_map(),
                    label: {
                        Text("Skip")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color.purple)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                    })
                HeaderView()
                    .offset(y:-60)
                NavigationLink(
                    destination: Text("Login"),
                    label: {
                        Text("Login")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color.purple)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                    })
                NavigationLink(
                    destination: Text("Sign up"),
                    label: {
                        Text("Sign up")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(Color.purple)
                            .cornerRadius(20)
                            .foregroundColor(.white)
                    })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct HeaderView: View {
    var body: some View {
        HStack{
        VStack(alignment: .leading, spacing: 2){
            Text("Just")
                .font(.system(size: 60,weight:.heavy,design:.rounded))
                .fontWeight(.black)
                .multilineTextAlignment(.leading)
            Text("test")
                .font(.system(size: 60,weight:.heavy,design:.rounded))
                .fontWeight(.black)
        }
        Spacer()
        }
        .padding()
    }
}
