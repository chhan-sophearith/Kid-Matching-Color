//
//  DraggableToy.swift
//  BabySortingToyGame
//
//  Created by chhan sophearith on 10/07/23.
//

import SwiftUI

struct DraggableToy<Draggable: Gesture>: View {
    let toy: Toy
    let position: CGPoint
    let gesture: Draggable
    private let size: CGFloat = 100
    
    var body: some View {
        Circle()
            .fill(toy.color)
            .frame(width: size, height: size)
            .shadow(radius: 10)
            .position(position)
            .gesture(gesture)
    }
}

struct DraggableToy_Previews: PreviewProvider {
    static var previews: some View {
        DraggableToy(
            toy: Toy.all.first!,
            position: .zero,
            gesture: DragGesture()
        )
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
