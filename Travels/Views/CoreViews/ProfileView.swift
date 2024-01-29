//
//  ProfileView.swift
//  Travels
//
//  Created by Putra Pebriano Nurba on 26/01/24.
//

import SwiftUI

struct ProfileView: View {
    let githubLink: URL? = URL(string: "https://github.com/PFebrianoooo")
    let linkedinLink: URL? = URL(string: "https://id.linkedin.com/in/putra-pebriano-nurba-754b9227b")
    let instagramlink: URL? = URL(string: "https://www.instagram.com/p.febrianoo_/")
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // gear settings button
            HStack {
                Spacer()
                
                Button {
                    // put an actions here
                } label: {
                    Image(systemName: "gear")
                        .font(.title2)
                        .foregroundColor(Color.colorButtonPrimary)
                }
            }
            .padding(.trailing, 25)
            Divider()
            
            // profile details
            VStack(spacing: 12) {
                Image.profileImage
                    .resizable()
                    .frame(width: 115, height: 110)
                    .clipShape(Circle())
                    .overlay {
                        Circle()
                            .stroke(Color.colorButtonPrimary, lineWidth: 1.0)
                    }
                
                VStack(spacing: 5) {
                    Text("putra pebriano nurba".capitalized)
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    
                    Button {
                        // put an action here
                    } label: {
                        Text("Edit Profile")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.colorButtonSecondary)
                            .padding(.horizontal)
                            .padding(.vertical, 3)
                    }
                    .background(
                        Color.colorButtonPrimary
                            .clipShape(Capsule())
                    )
                }
                
                // link segue info
                HStack(spacing: 20) {
                    if let githubLink {
                        Link(destination: githubLink) {
                            Image.gitLogo
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(5)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.colorButtonPrimary, lineWidth: 1.0)
                                }
                        }
                    }
                    
                    
                    
                    if let linkedinLink {
                        Link(destination: linkedinLink) {
                            Image.linkedinLogo
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(5)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.colorButtonPrimary, lineWidth: 1.0)
                                }
                        }
                    }
                    
                    if let instagramlink {
                        Link(destination: instagramlink) {
                            Image.instagramLogo
                                .resizable()
                                .frame(width: 60, height: 60)
                                .cornerRadius(5)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.colorButtonPrimary, lineWidth: 1.0)
                                }
                        }
                    }
                }
            }
            .padding(.bottom, 5)
            Divider()
            
            // user details informations
            VStack(alignment: .leading, spacing: 15) {
                HStack {
                    Text("Detail Informations".capitalized)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Spacer()
                }
                .padding(.leading, 25)
                .padding(.top, 5)
                
                VStack(spacing: 10) {
                    Text(" Hello friends my name is Putra Pebriano Nurba. Now im currently Undergraduate Students University of Muhamadiyah Jakarta. I love learn and find something new, especialy in tech.") +
                         
                    Text(" Now I am currently studying to become an iOS developer, I like challenges and always try to chalengging myself and be the best in the field I wanted.")
                    
                    
                    Text(" Criticism and suggestions are needed for my current self-development and I want to looking for new challenges regarding the field I am working in.") +
                    Text(" ThankYou")
                        .fontWeight(.semibold)
                    
                    HStack {
                        Spacer()
                        Text("sincerely.".capitalized)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                    }
                    .padding(.trailing, 25)
                    
                }
                .baselineOffset(-1)
                .padding(.horizontal, 25)
                .font(.subheadline)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
