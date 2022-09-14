//
//  ContentView.swift
//  Emoji
//
//  Created by Fatma Alhaifi on 14/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var Emojies = ["🤔", "🙂", "😇", "🥳", "🤓" , "🤕", "😴", "🤠", "😶"]
    @State var x = ""
    var body: some View {
        VStack{
            Text("اختار الايموجي اللي يعبّر عنك اليوم")
                .multilineTextAlignment(.center)
                .font(.system(size: 30))
            Text(x)
                .font(.system(size: 70))
                .frame(width: 100, height: 100)
            ScrollView(.horizontal){
                HStack {
                    ForEach(Emojies, id: \.self) { Emoji in
                        Text (Emoji)
                            .frame(width: 50, height: 50 )
                            .foregroundColor(Color.white)
                            .background(Color.yellow)
                            .clipShape(Circle())
                            .onTapGesture {
                                x =  Emoji
                            }
                    }
                }
            }
        }
    }
    // .padding()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
