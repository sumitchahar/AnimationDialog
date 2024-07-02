//
//  ContentView.swift
//  CardCreations
//
//  Created by Sumit on 27/06/24.
//

import SwiftUI

 struct MainView: View {
    
   @State var dataSet = "The result is a rounded rectangular view with the text displayed inside it. The corners of the view are rounded, giving it a visually appealing appearance. Feel free to experiment with different corner radii to achieve your desired look."
     
     var body: some View {
         ZStack {
             Image("BG")
                 .resizable()
                 .scaledToFill()
                 .ignoresSafeArea()
                 .edgesIgnoringSafeArea(.bottom)
             VStack { CustomPop(text: dataSet) }
         }
     }
  }

 #Preview {
     MainView()
 }
