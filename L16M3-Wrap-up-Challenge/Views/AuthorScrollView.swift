//
//  ContentView.swift
//  L16M3-Wrap-up-Challenge
//
//  Created by Marc Moxey on 3/7/23.
//

import SwiftUI

struct AuthorScrollView: View {
    
    @ObservedObject var model = AuthorModel()
    
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading, spacing: 20.0) {
                    
                    
                    ForEach(model.authors) { a in
                    
                        NavigationLink(
                            destination: AuthorDetailView(author: a), label: {
                                ZStack {
                                    Image(a.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .cornerRadius(15)
                                    
                                    VStack {
                                        Text(a.quotes[0])
                                            .font(.custom("title", size: 13))
                                        
                                               
                                        
                                        Text("-\(a.name)")
                                    }
                                    .padding([.top, .leading], 20.0)
                                    .shadow(color: .black, radius: 10, x: 2, y: 2)

                            } .foregroundColor(Color.white)
                                    .frame(width: .none, height: 400, alignment: .center)
                                    .clipped()
                                    .cornerRadius(15)
                                    .padding([.leading, .trailing])
                               
                        })
                    }
                }
            }
        }
        .navigationTitle("Quotes")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorScrollView()
    }
}
