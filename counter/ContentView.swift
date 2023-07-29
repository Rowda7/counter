//
//  ContentView.swift
//  counter
//
//  Created by Rowdah Alshehhi on 02/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0.0
    @State private var message = ""
    
    var body: some View {
        VStack {
            Text("\(counter)")
            
            HStack(alignment: .bottom, spacing: -15) {
                Rectangle()
                    .frame(width: 5)
                Text("🇦🇪")
                    .font(.system(size: 150))
                    .offset(y: -20 * counter)
    
                          
            }
        
            HStack {
                 
                Button {
                    print("You tapped me!")
                    
                    withAnimation {
                        counter += 1
                        
                        if counter >= 20 {
                            message = "here u gooo"
                        } else if counter >= 17 {
                            message = "You are very close to the top"
                        } else if counter >= 10 {
                            message = "you are so slow tap faster"
                        }
                        
                    }
                    
                    
                    
                } label: {
                    Text("Rais Flag")
                        .padding(8)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                        .shadow(color: .black.opacity(0.3), radius: 8)
                    
                
                        
         }
                Button {
                    counter = 0
                    message = ""
                } label: {
                    Text("Reset")
                        .padding(2)
                        .background(.white)
                        .foregroundColor(.red)
                        .cornerRadius(5)
                        .shadow(color: .black.opacity(0.3), radius: 8)
                    
                    
                }
                
                
            }
            
             Text(message)
                .padding()
                .foregroundColor(.red)
            
            }
        }
    }
 


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
