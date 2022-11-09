//
//  ContentView.swift
//  AppSetting
//
//  Created by Hibah Abdullah Alatawi on 09/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var arENInex = 0
    var arEN = ["Arabic", "English"]
    @State private var MyaccountInex = 0
    var Myaccount = ["change email", "Change Number", "Change Password"]
    var body: some View {
        NavigationView {
            ZStack{
                
                VStack{
                    
                    Divider().font(.title)
                    
                    VStack{
                        
                        Form {
                            Section() {
                                Picker(selection:  $arENInex, label: Text("Langauge")) {
                                    
                                    ForEach(0 ..< arEN.count) {Text(self.arEN[$0])}}}
                            
                        }
                        
                        
                        
                        Form{
                            HStack (spacing: 30){
                                Image(systemName:"person.crop.circle.fill").font(.largeTitle)
                                Text("My account")
                                    .font(.largeTitle)
                            }
                            HStack (spacing: 50) {
                                Image(systemName:"envelope.fill")
                                Button("change email"){}
                                    .colorMultiply(Color.black)
                            }
                            
                            HStack(spacing: 30) {
                                Image(systemName:"phone.fill")
                                Button("Change Number "){}
                                    .colorMultiply(Color.black)
                            }
                            
                            HStack(spacing: 20) {
                                Image(systemName:"lock.fill")
                                Button("Change Password"){}
                                    .colorMultiply(Color.black)
                            }
                        }.position(x:195 , y:-50 )
                        
                    }
                    Divider()
                    VStack { HStack(spacing: 26){
                        Image(systemName:"text.bubble.fill")
                        Button("Connect us"){}.colorMultiply(Color.black)
                        Image(systemName:"square.and.arrow.up.circle.fill")
                        Button("Share App"){}.colorMultiply(Color.black)
                    }  }
                    
                    
                }.navigationTitle("Settings")
                
                
                
            }
            
        }
        
    }
    
    
    
    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
