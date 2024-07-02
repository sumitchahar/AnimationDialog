//
//  CustomPop.swift
//  CardCreations
//
//  Created by Sumit on 27/06/24.


 import SwiftUI

 struct CustomPop: View {
    
  @State var isbool:Bool = false
  @State var text:String

   var body: some View {
       Spacer()
        ZStack {
            VStack(spacing:40) {
                Text("Worldsend Cottages")
                    .font(.system(size: 34, weight: .bold, design: .default))
                HStack {
                  HStack {
                        Image("location")
                            .resizable()
                            .frame(width:22,height:22)
                        Text("Wakefield,England")
                            .padding([.trailing])
                   }
                 Spacer()
                  HStack {
                        Image("bed")
                            .resizable()
                            .frame(width:22,height:22)
                        Text("6 sleeps")
                    }
                }.padding([.top],-20)
                .padding([.leading,.trailing],28)
                VStack(spacing:35) {
                    Text(text)
                    HStack {
                       Button {
                        } label: {
                          Text("100 $")
                                .foregroundStyle(.white)
                               .font(.system(size: 20, weight: .bold, design: .default))
                               .padding(20)
                        }
                        .background(.blue)
                          .contentShape(RoundedRectangle(cornerRadius: 10))
                          .cornerRadius(8)
                        Spacer()
                        Button {
                            isbool = false
                         } label: {
                           Text("Click")
                                .foregroundStyle(.white)
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .padding(20)
                         }
                           .frame(width:160)
                           .background(.red)
                           .contentShape(RoundedRectangle(cornerRadius: 10))
                           .cornerRadius(12)
                    }.padding([.leading,.trailing,.bottom],16)
                }.padding()
                 .padding([.top],-20)
            }.padding([.top],40)
        }.frame(width:400,height:420)
         .background(RoundedCorners(color: .white, tl: 34, tr: 34, bl: 0, br: 0))
         .offset(x:0, y: isbool ? 0 : 460)
         .animation(.default)
         .onAppear() { isbool = true }
   }
    
 }

#Preview {
    CustomPop(text:"The result is a rounded rectangular view with the text displayed inside it. The corners of the view are rounded, giving it a visually appealing appearance. Feel free to experiment with different corner radii to achieve your desired look.")
}
