//
//  SDRDevice.swift
//  waveSDR
//
//  Copyright © 2017 GetOffMyHack. All rights reserved.
//

import Foundation

//------------------------------------------------------------------------------
//
// This module describes the API for a generic SDR hardware device
//
// All SDR device modules must follow the protocol and override the class
// methods, making the SDRDevice class nothing but an abstract
//
//------------------------------------------------------------------------------

protocol SDRDeviceDelegate {
    func sdrDevice(_ device: SDRDevice, rawSamples: [UInt8])
//    func sdrDevice(_ device: SDRDevice, normalizedSamples: [Float])
}

//------------------------------------------------------------------------------
//
//
//
//------------------------------------------------------------------------------

protocol SDRDeviceProtocol: NSObjectProtocol {
    
    var delegate: SDRDeviceDelegate? { get set }
    
    func minimumFrequency() -> Int
    func maximumFrequency() -> Int

    func sampleRate() -> Int
    func sampleRate(rate: Int)
    func sampleRateList() -> [Int]
    
    func tunedFrequency() -> Int
    func tunedFrequency(frequency: Int)
    
    func frequencyCorrection() -> Int
    func frequencyCorrection(correction: Int)
    
    func tunerGainArray() -> [Int]
    func tunerAutoGain() -> Bool
    func tunerAutoGain(auto: Bool)
    func tunerGain() -> Int
    func tunerGain(gain: Int)
    
    func isOpen() -> Bool
    func isConfigured() -> Bool
    
    func startSampleStream()
    func stopSampleStream()
    
}

class SDRDevice: NSObject, SDRDeviceProtocol {
    
    internal var delegate: SDRDeviceDelegate?
    
    //--------------------------------------------------------------------------
    //
    // deviceCount()
    //
    // type method returning the number of devices installed
    //
    //--------------------------------------------------------------------------
    
    class func deviceCount() -> Int {
        return 0
    }
    
    //--------------------------------------------------------------------------
    //
    // deviceList()
    //
    // type method returning array of enumerated sdr devices
    //
    //--------------------------------------------------------------------------

    class func deviceList() -> [SDRDevice] {
        return []
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    override init() {
        super.init()
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func minimumFrequency() -> Int {
        return 0
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func maximumFrequency() -> Int {
        return 0
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func sampleRate() -> Int {
        return 0
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func sampleRate(rate: Int) {
    
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func sampleRateList() -> [Int] {
        return []
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func tunedFrequency() -> Int {
        return 0
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func tunedFrequency(frequency: Int) {
        
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func frequencyCorrection() -> Int {
        return 0
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func frequencyCorrection(correction: Int) {
        
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func tunerGainArray() -> [Int] {
        return []
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func tunerAutoGain() -> Bool {
        return false
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func tunerAutoGain(auto: Bool) {
        
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func tunerGain() -> Int {
        return 0
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func tunerGain(gain: Int) {
        
    }

    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func isConfigured() -> Bool {
        return false
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func isOpen() -> Bool {
        return false
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func startSampleStream() {
        
    }
    
    //--------------------------------------------------------------------------
    //
    //
    //
    //--------------------------------------------------------------------------

    func stopSampleStream() {
        
    }
}
 
