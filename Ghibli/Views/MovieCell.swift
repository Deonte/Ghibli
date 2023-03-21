//
//  MovieCell.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 3/17/23.
//

import SwiftUI

struct MovieCell: View {
    let film: Film
    
    var body: some View {
        ZStack(alignment: .leading) {
            ImageView(imageURL: film.image)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
//                .overlay {
//                    HStack {
//                        VStack(alignment: .leading) {
//                            Spacer()
//                            
//                            Text(film.releaseDate)
//                                .font(.headline)
//                                .foregroundColor(.white)
//                            
//                            Text(film.title)
//                                .font(.title)
//                                .bold()
//                                .foregroundColor(.white)
//                        }
//                        .padding(.leading)
//                        .padding(.bottom)
//                        
//                        Spacer()
//                    }
//                }
        }
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(film: MockData.singleMovie)
    }
}

struct ImageView: View {
    let imageURL: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image.resizable()
//                .overlay {
//                    LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
//                }

        } placeholder: {
            ProgressView()
        }
    }
}
