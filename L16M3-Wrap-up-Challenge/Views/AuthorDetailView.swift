//
//  AuthorDetailView.swift
//  L16M3-Wrap-up-Challenge
//
//  Created by Marc Moxey on 3/7/23.
//

import SwiftUI

struct AuthorDetailView: View {
    
    var author:Author
    
    var body: some View {
        VStack {
            VStack {
                Text(author.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)
            }
            
            VStack(alignment: .leading, spacing: 20){
                ForEach(author.quotes, id: \.self) { q in
                    Text(q)
                        
                        
                }
            }
        }
    }
}

struct AuthorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
    
        AuthorDetailView(author: Author.testData())
    }
}
