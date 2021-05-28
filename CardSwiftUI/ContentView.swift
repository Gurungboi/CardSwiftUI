//
//  ContentView.swift
//  CardSwiftUI
//
//  Created by Sunil on 27/5/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var editButton = false

    var body: some View {

        ZStack {
            BackgroundView(setBackgroundColor: .white)
            
            VStack {
                // First Stack
                VStack(spacing: 8) {
                    
                    CustomSemiBoldFont(title: "24 MAR 2021", size: 20, textColor: Color(.darkGray))
                        .padding(.init(top: 8, leading: 8, bottom: 0, trailing: 8))
                    
                    CustomSemiBoldFont(title: "• Deliverd", size: 20, textColor: Color(.darkGray))
                        .padding(.init(top: 0, leading: 8, bottom: 8, trailing: 8))
                    
                }.frame(minWidth: 0, maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 10.0).foregroundColor(Color(.lightGray)))
                .padding()
                
                // Second Stack
                
                HStack(spacing: 50) {
                    CustomMediumFont(title: "CARD", size: 20, textColor: Color(.lightGray))
                    ImageName(name: "bg",width: 110, height: 60)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
                
                LineShape()
                
                // Third Stack
                SendToView(title: "SEND TO", text: "Sunil Gurung", spacing: 30)
                SendToView(title: "VALUE", text: "$100 AU", spacing: 50)
                
                CustomSemiBoldFont(title: "RECIPIENT EMAIL/NUMBER",
                                 size: 20,
                                 textColor: Color(.lightGray))
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding()
        
                RecipientView(imageName: "envelope.pdf", title: "sunil@test.com", spacing: 20)
                RecipientView(imageName: "mobile.pdf", title: "0412 123 123", spacing: 20)

                Button {
                    editButton.toggle()
                } label: {
                    WeatherButton(title: "Edit gift", textColor: .white, backgroundColor:  .black)
                }
                .alert(isPresented: $editButton) {
                    Alert(title: Text(""), message: Text("Your detail has been Updated"), dismissButton: .default(Text("Ok")))
                }
                
            }
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BackgroundView: View {
    
    var setBackgroundColor: Color
    
    var body: some View {
        setBackgroundColor.ignoresSafeArea(.all, edges: .bottom)
    }
    
}

struct TextView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.system(size: 32, weight: .bold, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct ImageName: View {
    
    var name: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8){
            Image(name)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
            
            
            CustomSemiBoldFont(title: "Adobe Creative Cloud Photography Commercial Gift Card",
                             size: 20,
                             textColor: Color(.darkGray))
            
        }
    }
}

struct LineShape: View {
    
    var body: some View {
        Rectangle()
            .fill(Color(.lightGray))
            .frame(minWidth: 0,
                   maxWidth: .infinity,
                   maxHeight: 1)
            .padding(.init(top: 8, leading: 16, bottom: 8, trailing: 16))
        
    }
}

struct SendToView : View {
    
    var title: String
    var text: String
    var spacing: CGFloat
    
    var body: some View {
        HStack(spacing: spacing){
            CustomSemiBoldFont(title: title,
                             size: 20,
                             textColor: Color(.lightGray))
            
            CustomSemiBoldFont(title: text,
                             size: 20,
                             textColor: Color(.darkGray))
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))

        LineShape()
    }
}


struct RecipientView: View {
    var imageName: String
    var title: String
    var spacing: CGFloat

    var body: some View {
        HStack(spacing: spacing) {
            let image = UIImage(named: imageName)
            Image(uiImage: image ?? UIImage())
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
            CustomSemiBoldFont(title: title,
                             size: 20,
                             textColor: Color(.darkGray))
        }.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
        .padding(.leading, 24)
      
    }
    
}

struct WeatherButton: View {

    var title: String
    var textColor: Color
    var backgroundColor: Color

    var body: some View {
        Text(title)
            .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10.0)
            .padding()
    }
}
