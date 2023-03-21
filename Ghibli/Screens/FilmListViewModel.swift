//
//  FilmListViewModel.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 3/17/23.
//

import Foundation

final class FilmListViewModel: ObservableObject {
    @Published var movies: GhibliFilms = [] //MockData.multipleMovies
    @Published var searchText = ""
    @Published var isLoading = true 
    
    var searchResults: GhibliFilms {
        if searchText.isEmpty {
            return movies
        } else {
            return movies.filter { $0.title.contains(searchText) }
        }
    }

    init() {
        Task {
            await getMovies()
        }
    }
    
    func loadMovies() async throws -> GhibliFilms {
        let url = Bundle.main.url(forResource: "data", withExtension: "json")!
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        return try decoder.decode(GhibliFilms.self, from: data)
    }
    
    func getMovies() async {
        do {
            movies = try await loadMovies()
        } catch {
            print("Error loading movies: \(error)")
        }
    }
    
}
