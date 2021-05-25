//
//  ORMTabView.swift
//  OPS Pilot
//
//  Created by Caleb Wells on 5/25/21.
//

import SwiftUI

struct ORMTabView: View {
    @State private var formSelection = 0
    
    var body: some View {
        VStack {
            Picker(selection: $formSelection, label: Text("Picker")) {
                Text("U-2").tag(0)
                Text("T-38").tag(1)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            
            if formSelection == 0 {
                Form {
                    Section {
                        Text("U-2")
                    }
                }
            } else {
                Form {
                    Section {
                        Text("T-38")
                    }
                }
            }
        }
    }
}

struct ORMTabView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ORMTabView()
                .preferredColorScheme(.dark)
            ORMTabView()
        }
    }
}
