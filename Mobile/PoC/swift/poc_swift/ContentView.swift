//
//  ContentView.swift
//  poc_swift
//
//  Created by Antoine on 26/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isModalVisible = false
    @State private var selectedApi: [String] = []

    var body: some View {
        ZStack {
            Color(UIColor.systemGroupedBackground)
                .edgesIgnoringSafeArea(.all)

            if selectedApi.isEmpty {
                VStack {
                    Button(action: {
                        isModalVisible = true
                    }) {
                        Text("+")
                            .font(.largeTitle)
                            .frame(width: 130, height: 80)
                            .background(Color.white)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                    .padding()

                    Text("Add your first API")
                        .fontWeight(.bold)
                        .padding()
                }
            } else {
                VStack {
                    List(selectedApi, id: \.self) { api in
                        Text(api)
                    }
                    .listStyle(PlainListStyle())

                    Spacer()

                    Button(action: {
                        isModalVisible = true
                    }) {
                        Text("+")
                            .font(.largeTitle)
                            .frame(width: 130, height: 80)
                            .background(Color.white)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1)
                            )
                    }
                    .padding()
                }
            }
        }
        .sheet(isPresented: $isModalVisible) {
            ModalView(isModalVisible: $isModalVisible, selectedApi: $selectedApi)
        }
    }
}

struct ModalView: View {
    @Binding var isModalVisible: Bool
    @Binding var selectedApi: [String]

    var body: some View {
        VStack {
            Button("Dismiss") {
                isModalVisible = false
            }
            TextField("Enter API", text: Binding(
                get: { "" },
                set: { newValue in
                    if !newValue.isEmpty {
                        selectedApi.append(newValue)
                        isModalVisible = false
                    }
                }
            ))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
