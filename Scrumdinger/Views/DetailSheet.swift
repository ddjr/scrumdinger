//
//  DetailSheet.swift
//  Scrumdinger
//
//  Created by David Daly on 7/5/23.
//

import SwiftUI

struct EditScrumSheet: View {
    @State private var editingScrum = DailyScrum.emptyScrum
    @Binding var scrum: DailyScrum
    @Binding var isPresentingEditView: Bool

    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $editingScrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Dismiss") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Add") {
                            scrum = editingScrum
                            isPresentingEditView = false
                        }
                    }
                }
        }
        .onAppear {
            editingScrum = scrum
        }
    }
}

struct EditScrumSheet_Previews: PreviewProvider {
    static var previews: some View {
        EditScrumSheet(scrum: .constant(DailyScrum.sampleData[0]), isPresentingEditView: .constant(true))
    }
}
