//
//  FilmListView.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 3/17/23.
//

import SwiftUI

struct FilmListView: View {
    @ObservedObject private var viewModel = FilmListViewModel()
    
    var body: some View {
        if viewModel.isLoading {
            ProgressView()
                .onAppear {
                    Task {
                        try await Task.sleep(nanoseconds: 5_000_000_000)
                        viewModel.isLoading = false
                    }
                }
        } else {
            ScrollView {
                ForEach(viewModel.searchResults, id: \.title) { film in
                    NavigationLink {
                        DetailView(film: film)
                    } label: {
                        MovieCell(film: film)
                            .padding()
                    }
                }
            }
            .navigationTitle("Ghibli Films")
            .searchable(text: $viewModel.searchText, prompt: Text("Search films i.e. \"Spirited Away\""))
        }
    }
}

struct FilmListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            FilmListView()
        }
    }
}
