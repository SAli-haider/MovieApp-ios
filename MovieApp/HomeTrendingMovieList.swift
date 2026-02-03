//
//  HomeTrendingMovieList.swift
//  MovieApp
//
//  Created by Ali on 03/02/2026.
//

import SwiftUI

struct HomeTrendingMovieList: View {
    let header: String
    var trendingMoviesList = [Constants.testTitleURL,Constants.testTitleURL2,Constants.testTitleURL3]
    var body: some View {
        VStack(alignment: .leading){
            Text(header).font(.title)
            ScrollView(.horizontal){
                LazyHStack{
                    ForEach(trendingMoviesList, id: \.self){trendingMovie in
                        AsyncImage(url: URL(string: trendingMovie)){image in
                            image.resizable().scaledToFit().clipShape(RoundedRectangle(cornerRadius: 10))
                        } placeholder:{
                            ProgressView()
                        }.frame(width: 120,height: 200)
                    }
                }
            }
        }.frame(height: 250).padding(10)
    }
}

#Preview {
    HomeTrendingMovieList(header: Constants.trendingMovies)
}
