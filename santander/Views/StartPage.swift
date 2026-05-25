//
//  StartPage.swift
//  santander
//
//  Created by Elias Dinar on 19/5/26.
//

import SwiftUI

struct StartPage: View {
    @State var hide = false
    let accountData = UserAccountFactory.fetchUserAccount()
    
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                VStack(alignment: .center, spacing: 0) {
                    HStack {
                        Text("Tu dinero")
                            .bold()
                            .font(.custom("Lato-Bold", size: 19))
                        Image(systemName: "info.circle")
                    }.padding([.top], 10)
                    HStack {
                        if hide {
                            HStack {
                                Image(systemName:"ellipsis")
                                Text(" €")
                            }.font(.custom("Lato-Bold", size: 45))
                        } else {
                            Text(accountData.totalBalance.formatted(.currency(code: "EUR")))
                                .font(.custom("Lato-Bold", size: 45))
                        }
                    }.padding()
                    HStack(alignment: .top, spacing: 40) {
                        VStack {
                            Button(action: { }) {
                                Image("bizum")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 22, height: 22)
                                
                            }
                            .frame(width: 50, height: 50)
                            .font(.title3)
                            .glassEffect(.regular.tint(.santanderWhite).interactive(), in: .circle)
                            .foregroundColor(.santanderRed)
                            
                            
                            Text("Bizum")
                                .font(.custom("Lato-Bold", size: 17))
                        }
                        VStack {
                            Button(action: { }) {
                                Image(systemName: "arrow.up.right")
                            }
                            .frame(width: 50, height: 50)
                            .font(.title3)
                            .glassEffect(.regular.tint(.santanderWhite).interactive())
                            .foregroundColor(.santanderRed)
                            
                            Text("Enviar")
                                .font(.custom("Lato-Bold", size: 17))
                        }
                        VStack {
                            Button(action: { }) {
                                Image(systemName: "plus.circle")
                            }.font(.title3)
                                .frame(width: 50, height: 50)
                                .glassEffect(.regular.tint(.santanderWhite).interactive())
                                .foregroundColor(.santanderRed)
                            
                            Text("Para ti")
                                .font(.custom("Lato-Bold", size: 17))
                        }
                        VStack {
                            Button(action: { }) {
                                Image(systemName: "ellipsis")
                            }
                            .font(.title3)
                            .frame(width: 50, height: 50)
                            .glassEffect(.regular.tint(.santanderWhite).interactive())
                            .foregroundColor(.santanderRed)
                            Text("Más")
                                .font(.custom("Lato-Bold", size: 17))
                        }
                    }
                    .colorScheme(.dark)
                    .padding([.bottom], 30)
                    .padding([.top], 10)
                }
                .colorScheme(.dark)
                .frame(maxWidth: .infinity, alignment: .center)
                .foregroundColor(.santanderWhite)
                .background(Color.santanderRed)
                VStack {
                    VStack(alignment: .leading) {
                        Group {
                            Text("Cuentas")
                                .font(.santanderTitle)
                                .padding([.top], 10)
                                .padding([.bottom], 1)
                            if hide {
                                HStack {
                                    Text("Saldo total ")
                                    Image(systemName: "ellipsis")
                                    Text(" €")
                                }
                                .font(.santanderSubtitle)
                                .padding([.top], 0.5)
                            } else {
                                Text("Saldo total \(accountData.totalBalance.formatted(.currency(code: "EUR")))")
                                    .font(.santanderSubtitle)
                                    .padding([.top], 0.5)
                            }
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding([.leading], 20)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack (spacing: 17) {
                                ForEach(0..<accountData.bankAccounts.count, id:\.self) { index in
                                    let account = accountData.bankAccounts[index]
                                    AccountCard(
                                        iban: account.iban,
                                        balance: Double(account.balance) / 100.0,
                                        nickname: account.nickname,
                                        hide: hide
                                    )
                                }
                            }
                            .background(Color.santanderWhite)
                            .padding([.vertical], 13)
                        }
                        .frame(maxWidth: .infinity)
                        .scrollTargetBehavior(.viewAligned)
                        .contentMargins(.horizontal, 20, for: .scrollContent)
                        
                        HStack(alignment: .center) {
                            VStack {
                                Button(action: { }) {
                                    Image(systemName: "receipt")
                                }
                                .font(.title3)
                                .foregroundColor(.santanderLakeStream)
                                .frame(width: 50, height: 50)
                                .overlay {
                                    Circle()
                                        .stroke(Color.santanderLakeStream, lineWidth: 1.7)
                                }
                                .glassEffect(.regular.tint(.santanderIceBackground.mix(with: .black, by: 0.02, in: .device)).interactive(), in: .circle)
                                Text("Recibos e\nimpuestos")
                                    .multilineTextAlignment(.center)
                                    .font(.custom("Lato-Bold", size: 16))
                            }
                            Spacer()
                            VStack {
                                Button(action: { }) {
                                    Image(systemName: "list.bullet.rectangle")
                                }
                                .font(.title3)
                                .foregroundColor(.santanderLakeStream)
                                .frame(width: 50, height: 50)
                                .overlay {
                                    Circle()
                                        .stroke(Color.santanderLakeStream, lineWidth: 1.7)
                                }
                                .glassEffect(.regular.tint(.santanderIceBackground.mix(with: .black, by: 0.02, in: .device)).interactive(), in: .circle)
                                Text("Detalle\nde cuenta")
                                    .multilineTextAlignment(.center)
                                    .font(.custom("Lato-Bold", size: 16))
                            }
                            Spacer()
                            VStack {
                                Button(action: { }) {
                                    Image(systemName: "scroll")
                                }                            .font(.title3)
                                    .foregroundColor(.santanderLakeStream)
                                    .frame(width: 50, height: 50)
                                    .overlay {
                                        Circle()
                                            .stroke(Color.santanderLakeStream, lineWidth: 1.7)
                                    }
                                    .glassEffect(.regular.tint(.santanderIceBackground.mix(with: .black, by: 0.02, in: .device)).interactive(), in: .circle)
                                Text("Certificados\nde cuenta")
                                    .multilineTextAlignment(.center)
                                    .font(.custom("Lato-Bold", size: 16))
                            }
                            Spacer()
                            VStack {
                                Button(action: { }) {
                                    Image(systemName: "person.text.rectangle")
                                }
                                .font(.title3)
                                .foregroundColor(.santanderLakeStream)
                                .frame(width: 50, height: 50)
                                .overlay {
                                    Circle()
                                        .stroke(Color.santanderLakeStream, lineWidth: 1.7)
                                }
                                .glassEffect(.regular.tint(.santanderIceBackground.mix(with: .black, by: 0.02, in: .device)).interactive(), in: .circle)
                                Text("Actualizar\nFIOC")
                                    .multilineTextAlignment(.center)
                                    .font(.custom("Lato-Bold", size: 16))
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .padding([.horizontal], 20)
                        .padding([.top], 10)
                    }
                    VStack {
                        Group {
                            Text("Tarjetas")
                                .font(.santanderTitle)
                                .padding([.bottom], 1)
                                .padding([.top], 15)
                                .padding([.leading], 20)
                            ScrollView (.horizontal, showsIndicators: false) {
                                HStack(spacing: 17) {
                                    ForEach(0..<accountData.creditCards.count, id: \.self) { index in
                                        let card = accountData.creditCards[index]
                                        PhysicalCard(card.type, scale: 0.89)
                                            .overlay(alignment: .bottomLeading) {
                                                Text("Terminada en \(card.number.suffix(4))")
                                                    .padding()
                                                    .font(.custom("Lato-Regular", size: 16))
                                                    .foregroundColor(.santanderWhite)
                                            }
                                    }
                                }
                                .frame(maxWidth: .infinity)
                            }
                            .frame(maxWidth: .infinity)
                            .padding([.top], 13)
                            .padding([.leading], 20)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    }
                    .padding([.bottom], 27)
                    VStack (alignment: .leading) {
                        Text("Contacta con nosotros")
                            .font(.santanderTitle)
                            .padding([.top], 5)
                        VStack {
                            Button(action: {}) {
                                HStack {
                                    HStack {
                                        Image(systemName: "person.wave.2")
                                            .font(.title3)
                                            .padding([.all], 13)
                                            .background(Color.santanderBlack.opacity(0.05))
                                            .clipShape(.circle)
                                        VStack (alignment: .leading) {
                                            Text("Experto comercial".uppercased())
                                                .font(.custom("Lato-Bold", size: 19))
                                            Text("Contratar productos")
                                                .font(.custom("Lato-Bold", size: 18))
                                        }
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.santanderRed)
                                }.padding()
                            }
                            .glassEffect(.regular.interactive())
                            Button (action: { }) {
                                HStack {
                                    HStack {
                                        Image(systemName: "questionmark.bubble")
                                            .font(.title3)
                                            .padding([.all], 13)
                                            .background(Color.santanderBlack.opacity(0.05))
                                            .clipShape(.circle)
                                        VStack(alignment: .leading) {
                                            Text("Centro de ayuda".uppercased())
                                                .font(.custom("Lato-Bold", size: 19))
                                            Text("Contacto y soporte")
                                                .font(.custom("Lato-Bold", size: 18))
                                        }
                                    }
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .fontWeight(.semibold)
                                        .foregroundColor(.santanderRed)
                                }.padding()
                            }
                            .glassEffect(.regular.interactive())
                            
                        }
                        //.background(Color.santanderWhite)
                        //.cornerRadius(15)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .background(Color.santanderIceBackground)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding([.top], 17)
                .background(Color.santanderWhite)
            }
            .foregroundColor(.santanderBlack)
            .toolbar {
                
                ToolbarItem(placement: .topBarLeading) {
                    NavigationLink {
                        SideMenuView()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                    }
                }
                ToolbarSpacer(.fixed, placement: .topBarLeading)
                ToolbarItem(placement: .topBarLeading) {
                    Image("santander.long")
                        .foregroundStyle(Color.white)
                }.sharedBackgroundVisibility(.hidden)
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { hide = !hide }) {
                        if !hide {
                            Image(systemName: "eye.fill")
                        } else {
                            Image(systemName: "eye.slash.fill")
                        }
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { }) {
                        Image(systemName: "envelope.fill")
                    }
                }
            }
            .background(
                VStack(spacing: 0) {
                    Color.santanderRed
                    Color.santanderIceBackground
                }.ignoresSafeArea()
            )
            .foregroundColor(.santanderWhite)
            .toolbarBackground(Color.santanderRed)
            .toolbarBackgroundVisibility(.visible, for: .navigationBar)
            .toolbarColorScheme(.dark, for: .navigationBar)
            //.refreshable {
            //    try? await Task.sleep(nanoseconds: 2_000_000_000)
            //}
            //.tint(.white)
            
        }
    }
}

#Preview {
    StartPage()
}
