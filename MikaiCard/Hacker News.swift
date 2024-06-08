//
//  Hacker News.swift
//  MikaiCard
//
//  Created by Makai Klintman on 6/5/24.
//

import SwiftUI

struct Hacker_News: View {
    var body: some View {
        NavigationStack {
            List(posts) { post in
                Text(post.title)
            }
            .navigationTitle("Hacker News")
        }
    }
}

#Preview {
    Hacker_News()
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Yooo"),
    Post(id: "2", title: "What's up fam"),
    Post(id: "3", title: "Good looks")
]
