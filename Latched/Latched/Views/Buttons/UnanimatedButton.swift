//
//  UnanimatedButton.swift
//  Latched
//
//  Created by Andres Gutierrez on 3/18/22.
//

import SwiftUI

struct UnanimatedButton: View {
    var body: some View {
        Button(""){}
        .padding(65)
        .background(.green)
        .foregroundColor(.white)
        .clipShape(Circle())
    }
}

struct UnanimatedButton_Previews: PreviewProvider {
    static var previews: some View {
        UnanimatedButton()
    }
}
