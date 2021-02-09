//
//  ContentView.swift
//  fi
//
//  Created by Sofi on 09.02.2021.
//

import SwiftUI



struct Swift2:View {
    @State var Swift22 = 1
    var body: some View{
        if Swift22 == 1{
            ContentView(Swift22: $Swift22)
        } else if Swift22 == 2{
            Vi(Swift22: $Swift22)
        }
    }
}
struct ContentView: View {
    @Binding var Swift22:Int
    var body: some View {
        ZStack{
            Color("pin")
            VStack{
            Image("bg").resizable().scaledToFit()
                Spacer()
            }
            VStack(alignment:.leading){
                Image("dr")
                Text("Sour").font(.custom("", size: 24)).foregroundColor(Color("bur"))
                Text("Best drink \nreceipes").font(.custom("", size: 14)).foregroundColor(Color("bur"))
            }.offset(x: -120, y: -200)
            VStack(spacing:20){
               
                    Button(action: {}, label: {
                        Text("Sign up").frame(width: 208, height: 48, alignment: .center).font(.custom("", size: 18))
                            .foregroundColor(.white)
                            .background(LinearGradient(gradient: Gradient(colors: [Color("p1"), Color("or")]), startPoint: .leading
                                                       , endPoint: .trailing)).cornerRadius(22)
                    })
                    
                Button(action: {
                    Swift22 = 2
                }, label: {
                    Text("Log in").frame(width: 208, height: 48, alignment: .center).font(.custom("", size: 18))
                        .foregroundColor(Color("p"))
                        .background(Color.white).cornerRadius(22)
                })
                Text("Forgot password?").font(.custom("", size: 18)).foregroundColor(Color("bur"))
                HStack(spacing:20){
                    Rectangle()
                        .frame(width: 100, height: 1, alignment: .center).foregroundColor(Color("bur"))
                    Image("in")
                    Image("fa")
                    Image("sw")
                    Rectangle()
                        .frame(width: 100, height: 1, alignment: .center).foregroundColor(Color("bur"))
                }.offset( y: 30)
                        
            
            }.offset( y: 270)
        }.edgesIgnoringSafeArea(.all)
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Vi()
//    }
//}


struct Vi:View {
    @State var mess = ""
    @State var error = false
    @Binding var Swift22:Int
    @State var text = ""
    @State var pass = ""
    var body: some View{
        ZStack{
            VStack{
            Image("im").resizable().scaledToFit()
                Spacer()
                
                
            }
            VStack{
                Spacer()
            Image("ve").resizable().scaledToFit()
            }
            VStack{
                Button(action: {
                    Swift22 = 1
                }, label: {
                    ZStack{
                        
                    Image("i")
                        Image(systemName: "chevron.backward").resizable().frame(width: 12, height: 22, alignment: .center).foregroundColor(Color("p"))
                    }
                }).offset(x:  -150, y: 100)
                
                Spacer()
            }
            
            
            VStack(alignment:.leading, spacing:30){
                Text("Log in").font(.custom("", size: 24)).foregroundColor(Color("bur"))
                VStack(alignment:.leading, spacing:3){
                    Text("Your Email").font(.custom("", size: 14)).foregroundColor(Color("bur"))
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color.gray.opacity(0.2) )
                            .foregroundColor(.clear)
                            .frame(width: 312, height: 56, alignment: .center)
                        HStack{
                            Image("em").padding()
                            TextField("stevejobs@gmail.com", text: $text)
                        }.frame(width: 312, height: 56, alignment: .center)
                        
                        
                    }
                    
                }
                VStack(alignment:.leading, spacing:3){
                    Text("Your Password").font(.custom("", size: 14)).foregroundColor(Color("bur"))
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .strokeBorder(Color.gray.opacity(0.2) )
                            .foregroundColor(.clear)
                            .frame(width: 312, height: 56, alignment: .center)
                        HStack{
                            Image("k").padding()
                            SecureField("stevejobs@gmail.com", text: $pass)
                        }.frame(width: 312, height: 56, alignment: .center)
                        
                        
                    }
                    
                }
                Button(action: {
                    if text != "" && pass != "" {
                        if text.contains("@"){
                            error.toggle()
                            mess = "All right"
                        }else{
                            error.toggle()
                            mess = "Incorrect email"
                        }
                    } else{
                        error.toggle()
                        mess = "Enter all fields"
                    }
                }, label: {
                    HStack{
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 34).frame(width: 160, height: 48, alignment: .center).foregroundColor(.clear).background(LinearGradient(gradient: Gradient(colors: [Color("p1"), Color("or")]), startPoint: .leading
                                                                                                                                           , endPoint: .trailing)).cornerRadius(22)
                            HStack{
                            Text("Login").foregroundColor(.white).offset( x:-15)
                                Image("ar").offset( x:20)
                            }
                        }
                       
                    }
                }).alert(isPresented: $error, content: {
                    Alert(title: Text("Error"), message: Text("\(mess)"), dismissButton: .default(Text("Ok")))
                })
              .offset(x: -50)
            }.offset( x:30, y: 150)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

//
//struct Custon:View {
//    @Binding var pass:String
//    @State var place:Image
//    @State var
//    var body: some View{
//        ZStack{
//            if pass.isEmpty{
//                place
//            }
//        }
//    }
//}
