//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class ChatViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    let db = Firestore.firestore()
    
    
    var messages: [Message] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        tableView.delegate = self
        tableView.dataSource = self
        
        ///Agregar titulo al NavigationView
        title = K.appName
        ///Oculta el boton Back del navigationView
        navigationItem.hidesBackButton = true
        
        
        ///Registrar celda personalizada
        tableView.register(UINib(nibName: K.cellNibName, bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
        
        loadMessages()
        
        
    }
    
    /// Recuperar datos de firestore
    func loadMessages()  {
        
        db.collection(K.FStore.collectionName)
            .order(by: K.FStore.dateField)
            .addSnapshotListener { (querySnapshot, error) in
                
                self.messages = []
                
                if let e = error {
                    
                    print("There was an issue retrieving data from firestore. \(e.localizedDescription)")
                    
                } else {
                    
                    if let snapshotDocuments = querySnapshot?.documents {
                        
                        for doc in snapshotDocuments {
                            let data = doc.data()
                            if let sender = data[K.FStore.senderField] as? String, let messageBody = data[K.FStore.bodyField] as? String {
                                
                                let newMessage = Message(sender: sender, body: messageBody)
                                
                                self.messages.append(newMessage)
                                
                                ///Recargar los datos del tableview
                                DispatchQueue.main.async {
                                    
                                    self.tableView.reloadData()
                                    self.messageTextfield.text = ""
                                    
                                    let indexPath = IndexPath(row: self.messages.count - 1 , section: 0)
                                    
                                    //Go to end row
                                    self.tableView.scrollToRow(at: indexPath, at: .top, animated: true)
                                    
                                }
                            }
                        }
                        
                    }
                    
                }
                
            }
        
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
        
        if let messageBody = messageTextfield.text, let messageSender = Auth.auth().currentUser?.email {
            
            db.collection(K.FStore.collectionName).addDocument(data: [
                K.FStore.senderField : messageSender,
                K.FStore.bodyField : messageBody,
                K.FStore.dateField : Date().timeIntervalSince1970
                
            ]) { (error) in
                if let e = error {
                    print("There was an issue savinng data to firestore, \(e.localizedDescription)")
                } else {
                    
                    print("Successfully saved data.")
                    
                    //Clear input text field
                    DispatchQueue.main.async {
                        self.messageTextfield.text = ""
                    }
                }
            }
            
        }
        
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        
        let firebaseAuth = Auth.auth()
        do {
            
            try firebaseAuth.signOut()
            
            navigationController?.popToRootViewController(animated: true)
            
        } catch let singOutError as NSError {
            
            print("Error signing out: %@", singOutError)
            
        }
        
    }
    
}

extension ChatViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let message = messages[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath) as! MessageCell
        
        cell.label.text = message.body
        
        
        if message.sender == Auth.auth().currentUser?.email {
            //This is a message from a current user
            cell.leftImageView.isHidden = true
            cell.rightImageView.isHidden = false
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.lightPurple)
            cell.label.textColor = UIColor(named: K.BrandColors.purple)
            print("Currente sender: \(message.sender)")
            
        } else {
            //This is a message from a another sender.
            cell.leftImageView.isHidden = false
            cell.rightImageView.isHidden = true
            cell.messageBubble.backgroundColor = UIColor(named: K.BrandColors.purple)
            cell.label.textColor = UIColor(named: K.BrandColors.lightPurple)
            print("Currente sender: \(message.sender)")
        }
        
        return cell
        
    }
    
    
}

//Accion al seleccionar celda
//extension ChatViewController: UITableViewDelegate {
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        print(indexPath.row)
//
//    }
//
//}
