//
//  HomeView.swift
//  MovieApp
//
//  Created by Ali on 03/02/2026.
//

import SwiftUI

struct HomeView: View {
    var homeUrl = Constants.testTitleURL

    var body: some View {
        GeometryReader { geo in
            ScrollView {
                VStack{
                    AsyncImage(url: URL(string: homeUrl)){ image in
                        image.resizable().scaledToFit().overlay{
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: .clear, location: 0.8),
                                        Gradient.Stop(
                                color: .gradient, location: 1.0
                            )],
                                startPoint: .top, endPoint: .bottom)
                        }
                    }placeholder:{
                        ProgressView()
                    }.frame(width: geo.size.width,height: geo.size.height*0.85)
                    
                    HStack {
                        Button{} label: {
                            Text(Constants.playBtnText).getGhostButton()
                        }
                        Button{} label: {
                            Text(Constants.downloadBtnText).getGhostButton()
                        }
                    }
                    
                    HomeTrendingMovieList(header: Constants.trendingMovies)
                    HomeTrendingMovieList(header: Constants.upComingMovies)
                    HomeTrendingMovieList(header: Constants.favMovies)
                    
                    
                }
            }
        }
        
        
    }
}

#Preview {
    HomeView()
}
