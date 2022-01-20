//
//  main.swift
//  Protocols and Delegates
//
//  Created by Nestor Blanco on 1/17/22.
//

//import Foundation
//
//print("Hello, World!")

protocol AdvanceLifeSupport {
    
    func performCPR()
    
}


class EmergencyCallHandler {
    
    var delegate: AdvanceLifeSupport?
    
    func assessSituation() {
        
        print("Can you tell me what happened?")
        
    }
    
    func medicalEmeregency() {
        
        delegate?.performCPR()
        
    }
    
}

struct Paramedic: AdvanceLifeSupport {
    
    init (handler: EmergencyCallHandler) {
        
        handler.delegate = self
        
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per seconds")
    }
    
}

class Doctor: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler){
        
        handler.delegate = self
        
    }
    
    func performCPR() {
        print("The paramedic does chest compressions, 30 per seconds")
    }

    func useStethescope() {
        
        print("Linting the heart sounds")
        
    }
    
}


class Surgeon: Doctor {
    
    override func performCPR() {
        super.performCPR()
        print("Sing staying Alive by the BeeGees")
    }
    
    func userElelectricDrill() {
        print("Whirr...")
    }
    
}


let emilio = EmergencyCallHandler()
let pete = Paramedic(handler: emilio)

let angela = Surgeon(handler: emilio)

//emilio.assessSituation()
//emilio.medicalEmeregency()

angela.performCPR()
angela.useStethescope()
angela.userElelectricDrill()
