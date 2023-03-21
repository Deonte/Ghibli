//
//  DetailView.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 3/17/23.
//

import SwiftUI

struct DetailView: View {
    let film: Film
    
    var body: some View {
        ScrollView {
            ZStack {
                ImageView(imageURL: film.movieBanner)
                    .frame(height: 300)
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                    }
                
                HStack(alignment: .top, spacing: 10) {
                    ImageView(imageURL: film.image)
                        .frame(width: 160, height: 250)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                    
                    VStack(alignment: .leading) {
                        Text(film.releaseDate)
                            .font(.headline)
                            .foregroundColor(.white)

                        Text(film.title)
                            .font(.title)
                            .bold()
                            .foregroundColor(.white)
                            .minimumScaleFactor(0.7)
                            .lineLimit(3)
                    Spacer()
                    }
                }
                .padding()
                .zIndex(1)
                .offset(.init(width: 0, height: 120))
            }
            
            
            VStack {
                Color.red
                    .frame(height: 400)
                
            }
            .zIndex(-2)
            
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(film: MockData.singleMovie)
    }
}
