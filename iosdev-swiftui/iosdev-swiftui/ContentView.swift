//
//  ContentView.swift
//  iosdev-swiftui
//
//  Created by jess on 7/5/2024.
//

import SwiftUI

struct ActivityView: View {
    @State private var selectedActivity = "Select"
    @State private var selectedDate = Date()
    @State private var duration = 30.0 // Default to 30 minutes
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Add Activity")
                    .font(.title
                        .bold())
                    .padding(5)
                
                Form {
                    Picker("Activity Type", selection: $selectedActivity) {
                        Text("Select").tag("Select")
                        Text("Basketball")
                            .tag("Basketball")
                        
                            
                        // Add more options as needed
                    }
                    
                    DatePicker("Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
                    
                    Picker("Duration", selection: $duration) {
                        ForEach(1...120, id: \.self) { minute in
                            Text("\(minute) minutes").tag(Double(minute))
                        }
                    }
                }
                
                Spacer()
                Button(action: {
                    // Add your action here
                }) {
                    Text("Done")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.black)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
                .padding()
            }
            .navigationBarItems(leading: Button(action: {
                // Add your action here
            }) {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}


#Preview {
    ActivityView()
}
