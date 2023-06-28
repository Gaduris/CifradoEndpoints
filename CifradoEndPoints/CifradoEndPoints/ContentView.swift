//
//  ContentView.swift
//  CifradoEndPoints
//
//  Created by Administrador on 19/06/23.
//

import SwiftUI
import CryptoSwift

struct ContentView: View {
    @State private var inputText: String = ""
    @State private var encryptedText: String = ""
    @State private var decryptedText: String = ""
    
    let key = "6b65796b65796b65796b65796b65796b"//"keykeykeykeykeyk" // key
    let iv = "64726f777373617064726f7773736170"//"drowssapdrowssap" // random
    
    @State private var encrytedTextR: String = ""
    @State private var encrytedTextQA: String = ""
    @State private var encrytedTextDEB: String = ""
    @State private var encrytedTextQA2: String = ""
    @State private var encrytedTextQA3: String = ""
    @State private var encrytedTextSEC: String = ""
    
    @State private var encrytedTextLC: String = ""
    @State private var encrytedTextLAPP: String = ""
    @State private var encrytedTextNEW: String = ""
    @State private var encrytedTextREL: String = ""
    @State private var encrytedTextCHE: String = ""
    @State private var encrytedTextSYNC: String = ""
    @State private var encrytedTextRKEY: String = ""
    @State private var encrytedTextCOD: String = ""
    @State private var encrytedTextLAUTO: String = ""
    @State private var encrytedTextVCOD: String = ""
    @State private var encrytedTextBDISP: String = ""
    @State private var encrytedTextALINK: String = ""
    
    
    @State private var decryptedTextR: String = ""
    @State private var decryptedTextQA: String = ""
    @State private var decryptedTextDEB: String = ""
    @State private var decryptedTextQA2: String = ""
    @State private var decryptedTextQA3: String = ""
    @State private var decryptedTextSEC: String = ""
    
    
    @State private var decryptedTextLC: String = ""
    @State private var decryptedTextLAPP: String = ""
    @State private var decryptedTextNEW: String = ""
    @State private var decryptedTextREL: String = ""
    @State private var decryptedTextCHE: String = ""
    @State private var decryptedTextSYNC: String = ""
    @State private var decryptedTextRKEY: String = ""
    @State private var decryptedTextCOD: String = ""
    @State private var decryptedTextLAUTO: String = ""
    @State private var decryptedTextVCOD: String = ""
    @State private var decryptedTextBDISP: String = ""
    @State private var decryptedTextALINK: String = ""
    
    var body: some View {
        VStack {
            TextField("Texto a encriptar", text: $inputText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Encriptar", action: encryptText)
                .padding()
            
            Text("Texto encriptado:")
                .font(.headline)
            Text(encryptedText)
            
            Button("Desencriptar", action: decryptText)
                .padding()
            
            Text("Texto desencriptado:")
                .font(.headline)
            Text(decryptedText)
            
            Spacer()
        }
        .padding()
    }
    
    func encryptText() {
        do {
            
            let keyStr = hexToStr(text: key)
            let ivStr = hexToStr(text: iv)
            
             let inputData = Data(inputText.utf8)
             let encryptedData = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputData.bytes)
             encryptedText = encryptedData.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            
            print(">> AMBIENTES ENC <<")
            
            // RELEASE https://apoyociudadano.ine.mx
            let inputDataR = Data("https://apoyociudadano.ine.mx".utf8)
            let encryptedDataR = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataR.bytes)
            encrytedTextR = encryptedDataR.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("RELEASE enc >> \(encrytedTextR)")
            
            // QA https://siappcalin1.ipa.derfe.ine.mx:8443
            let inputDataQA = Data("https://siappcalin1.ipa.derfe.ine.mx:8443".utf8)
            let encryptedDataQA = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataQA.bytes)
            encrytedTextQA = encryptedDataQA.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("QA enc >> \(encrytedTextQA)")
            
            // DEBUG https://apoyociudadanoddos.ipa.derfe.ine.mx[
            let inputDataDEB = Data("https://apoyociudadanoddos.ipa.derfe.ine.mx".utf8)
            let encryptedDataDEB = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataDEB.bytes)
            encrytedTextDEB = encryptedDataDEB.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("DEVELOPMENT enc >> \(encrytedTextDEB)")
            
            // QA2 https://calidad72.ipa.derfe.ine.mx
            let inputDataQA2 = Data("https://calidad72.ipa.derfe.ine.mx".utf8)
            let encryptedDataQA2 = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataQA2.bytes)
            encrytedTextQA2 = encryptedDataQA2.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("QA2 enc >> \(encrytedTextQA2)")
            
            // QA3 http://172.19.78.167:8080
            let inputDataQA3 = Data("http://172.19.78.167:8080".utf8)
            let encryptedDataQA3 = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataQA3.bytes)
            encrytedTextQA3 = encryptedDataQA3.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("QA3 enc >> \(encrytedTextQA3)")
            
            // SECURITY https://acgestion-seg-derfe.ine.mx
            let inputDataSEC = Data("https://acgestion-seg-derfe.ine.mx".utf8)
            let encryptedDataSEC = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataSEC.bytes)
            encrytedTextSEC = encryptedDataSEC.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("SECURITY enc >> \(encrytedTextSEC)")
            
            
            print(">> Complementos URL ENC <<")
            
            // LOGIN COMPLEMENTO  /gestion/api/loginComplemento
            let inputDataLC = Data("/gestion/api/loginComplemento".utf8)
            let encryptedLC = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataLC.bytes)
            encrytedTextLC = encryptedLC.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("LOGIN COMPLEMENTO enc >> \(encrytedTextLC)")
            
            
            // LOGIN APP  /gestion/api/loginApp
            let inputDataLAPP = Data("/gestion/api/loginApp".utf8)
            let encryptedLAPP = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataLAPP.bytes)
            encrytedTextLAPP = encryptedLAPP.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("LOGIN APP enc >> \(encrytedTextLAPP)")
            
            // NEW  /gestion/api/apoyo/new
            let inputDataNEW = Data("/gestion/api/apoyo/new".utf8)
            let encryptedNEW = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataNEW.bytes)
            encrytedTextNEW = encryptedNEW.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("NEW enc >> \(encrytedTextNEW)")
            
            // RELOAD  /gestion/api/reload
            let inputDataREL = Data("/gestion/api/reload".utf8)
            let encryptedREL = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataREL.bytes)
            encrytedTextREL = encryptedREL.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("RELOAD enc >> \(encrytedTextREL)")
            
            // CHECK AUX  /gestion/api/auxiliar/check
            let inputDataCHE = Data("/gestion/api/auxiliar/check".utf8)
            let encryptedCHE = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataCHE.bytes)
            encrytedTextCHE = encryptedCHE.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("CHECK AUX enc >> \(encrytedTextCHE)")
            
            // SYCRONIZE  /gestion/api/synchronize
            let inputDataSYNC = Data("/gestion/api/synchronize".utf8)
            let encryptedSYNC = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataSYNC.bytes)
            encrytedTextSYNC = encryptedSYNC.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("SYCRONIZE enc >> \(encrytedTextSYNC)")
            
            // REQUEST KEY  /gestion/api/requestKey
            let inputDataRKEY = Data("/gestion/api/requestKey".utf8)
            let encryptedRKEY = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataRKEY.bytes)
            encrytedTextRKEY = encryptedRKEY.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("REQUEST KEY enc >> \(encrytedTextRKEY)")
            
            // CODIGO   /gestion/api/codigo
            let inputDataCOD = Data("/gestion/api/codigo".utf8)
            let encryptedCOD = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataCOD.bytes)
            encrytedTextCOD = encryptedCOD.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("CODIGO enc >> \(encrytedTextCOD)")
            
            // LOGIN AUTOSERVICIO   /gestion/api/apoyo/loginAutoservicio
            let inputDataLAUTO = Data("/gestion/api/apoyo/loginAutoservicio".utf8)
            let encryptedLAUTO = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataLAUTO.bytes)
            encrytedTextLAUTO = encryptedLAUTO.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("LOGIN AUTOSERVICIO enc >> \(encrytedTextLAUTO)")
            
            // VALIDA CODIGO   /gestion/api/apoyo/validaCodigo
            let inputDataVCOD = Data("/gestion/api/apoyo/validaCodigo".utf8)
            let encryptedVCOD = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataVCOD.bytes)
            encrytedTextVCOD = encryptedVCOD.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("VALIDA CODIGO enc >> \(encrytedTextVCOD)")
            
            // BAJA DE DISPOSITIVO  /gestion/api/apoyo/bajaDispositivo
            let inputDataBDISP = Data("/gestion/api/apoyo/bajaDispositivo".utf8)
            let encryptedBDISP = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataBDISP.bytes)
            encrytedTextBDISP = encryptedBDISP.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("BAJA DE DISPOSITIVO enc >> \(encrytedTextBDISP)")
            
            // AVISO LINK  https://www.ine.mx/transparencia/listado-bases-datos-personales/
            let inputDataALINK = Data("https://www.ine.mx/transparencia/listado-bases-datos-personales/".utf8)
            let encryptedALINK = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).encrypt(inputDataALINK.bytes)
            encrytedTextALINK = encryptedALINK.toBase64(options: Data.Base64EncodingOptions(rawValue: 0))
            print("AVISO LINK enc >> \(encrytedTextALINK)")
           
            
        } catch {
            print("Error al encriptar: \(error.localizedDescription)")
        }
    }
    
    func decryptText() {
        do {
            
            let keyStr = hexToStr(text: key)
            let ivStr = hexToStr(text: iv)
            
             let encryptedData = Data(base64Encoded: encryptedText)
             let decryptedData = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedData!.bytes)
             decryptedText = String(bytes: decryptedData, encoding: .utf8) ?? ""
            
            print(">> AMBIENTES DEC <<")
            
            // RELEASE https://apoyociudadano.ine.mx
            let encryptedDataR = Data(base64Encoded: encrytedTextR)
            let decryptedDataR = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataR!.bytes)
            decryptedTextR = String(bytes: decryptedDataR, encoding: .utf8) ?? ""
            print("RELEASE dec >> \(decryptedTextR)")
            
            // QA https://siappcalin1.ipa.derfe.ine.mx:8443
            let encryptedDataQA = Data(base64Encoded: encrytedTextQA)
            let decryptedDataQA = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataQA!.bytes)
            decryptedTextQA = String(bytes: decryptedDataQA, encoding: .utf8) ?? ""
            print("QA dec >> \(decryptedTextQA)")
            
            // DEBUG https://apoyociudadanoddos.ipa.derfe.ine.mx:8443
            let encryptedDataDEB = Data(base64Encoded: encrytedTextDEB)
            let decryptedDataDEB = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataDEB!.bytes)
            decryptedTextDEB = String(bytes: decryptedDataDEB, encoding: .utf8) ?? ""
            print("DEBUG dec >> \(decryptedTextDEB)")
            
            // QA2 https://calidad72.ipa.derfe.ine.mx
            let encryptedDataQA2 = Data(base64Encoded: encrytedTextQA2)
            let decryptedDataQA2 = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataQA2!.bytes)
            decryptedTextQA2 = String(bytes: decryptedDataQA2, encoding: .utf8) ?? ""
            print("QA2 dec >> \(decryptedTextQA2)")
            
            // QA3 http://172.19.78.167:8080
            let encryptedDataQA3 = Data(base64Encoded: encrytedTextQA3)
            let decryptedDataQA3 = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataQA3!.bytes)
            decryptedTextQA3 = String(bytes: decryptedDataQA3, encoding: .utf8) ?? ""
            print("QA3 dec >> \(decryptedTextQA3)")
            
            // SECURITY https://acgestion-seg-derfe.ine.mx
            let encryptedDataSEC = Data(base64Encoded: encrytedTextSEC)
            let decryptedDataSEC = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataSEC!.bytes)
            decryptedTextSEC = String(bytes: decryptedDataSEC, encoding: .utf8) ?? ""
            print("SECURITY dec >> \(decryptedTextSEC)")
            
            print(">> Complementos URL DEC <<")
            
            // LOGIN COMPLEMENTO  /gestion/api/loginComplemento
            let encryptedDataLC = Data(base64Encoded: encrytedTextLC)
            let decryptedDataLC = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataLC!.bytes)
            decryptedTextLC = String(bytes: decryptedDataLC, encoding: .utf8) ?? ""
            print("LOGIN COMPLEMENTO dec >> \(decryptedTextLC)")
            
            // LOGIN APP  /gestion/api/loginApp
            let encryptedDataLAPP = Data(base64Encoded: encrytedTextLAPP)
            let decryptedDataLAPP = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataLAPP!.bytes)
            decryptedTextLAPP = String(bytes: decryptedDataLAPP, encoding: .utf8) ?? ""
            print("LOGIN APP dec >> \(decryptedTextLAPP)")
            
            // NEW  /gestion/api/apoyo/new
            let encryptedDataNew = Data(base64Encoded: encrytedTextNEW)
            let decryptedDataNew = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataNew!.bytes)
            decryptedTextNEW = String(bytes: decryptedDataNew, encoding: .utf8) ?? ""
            print("NEW dec >> \(decryptedTextNEW)")
            
            // RELOAD  /gestion/api/apoyo/reload
            let encryptedDataREL = Data(base64Encoded: encrytedTextREL)
            let decryptedDataREL = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataREL!.bytes)
            decryptedTextREL = String(bytes: decryptedDataREL, encoding: .utf8) ?? ""
            print("RELOAD dec >> \(decryptedTextREL)")
            
            // CHECK AUX  /gestion/api/auxiliar/check
            let encryptedDataCHE = Data(base64Encoded: encrytedTextCHE)
            let decryptedDataCHE = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataCHE!.bytes)
            decryptedTextCHE = String(bytes: decryptedDataCHE, encoding: .utf8) ?? ""
            print("CHECK AUX dec >> \(decryptedTextCHE)")
            
            // SYCRONIZE  /gestion/api/synchronize
            let encryptedDataSYNC = Data(base64Encoded: encrytedTextSYNC)
            let decryptedDataSYNC = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataSYNC!.bytes)
            decryptedTextSYNC = String(bytes: decryptedDataSYNC, encoding: .utf8) ?? ""
            print("SYCRONIZE dec >> \(decryptedTextSYNC)")
            
            // REQUEST KEY  /gestion/api/requestKey
            let encryptedDataRKEY = Data(base64Encoded: encrytedTextRKEY)
            let decryptedDataRKEY = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataRKEY!.bytes)
            decryptedTextRKEY = String(bytes: decryptedDataRKEY, encoding: .utf8) ?? ""
            print("REQUEST KEY dec >> \(decryptedTextRKEY)")
            
            // CODIGO   /gestion/api/codigo
            let encryptedDataCOD = Data(base64Encoded: encrytedTextCOD)
            let decryptedDataCOD = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataCOD!.bytes)
            decryptedTextCOD = String(bytes: decryptedDataCOD, encoding: .utf8) ?? ""
            print("CODIGO dec >> \(decryptedTextCOD)")
            
            // LOGIN AUTOSERVICIO   /gestion/api/apoyo/loginAutoservicio
            let encryptedDataLAUTO = Data(base64Encoded: encrytedTextLAUTO)
            let decryptedDataLAUTO = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataLAUTO!.bytes)
            decryptedTextLAUTO = String(bytes: decryptedDataLAUTO, encoding: .utf8) ?? ""
            print("LOGIN AUTOSERVICIO dec >> \(decryptedTextLAUTO)")
            
            // VALIDA CODIGO   /gestion/api/apoyo/validaCodigo
            let encryptedDataVCOD = Data(base64Encoded: encrytedTextVCOD)
            let decryptedDataVCOD = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataVCOD!.bytes)
            decryptedTextVCOD = String(bytes: decryptedDataVCOD, encoding: .utf8) ?? ""
            print("VALIDA CODIGO  dec >> \(decryptedTextVCOD)")
            
            // BAJA DE DISPOSITIVO  /gestion/api/apoyo/bajaDispositivo
            let encryptedDataBDISP = Data(base64Encoded: encrytedTextBDISP)
            let decryptedDataBDISP = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataBDISP!.bytes)
            decryptedTextBDISP = String(bytes: decryptedDataBDISP, encoding: .utf8) ?? ""
            print("BAJA DE DISPOSITIVO  dec >> \(decryptedTextBDISP)")
            
            // AVISO LINK  https://www.ine.mx/transparencia/listado-bases-datos-personales/
            let encryptedDataALINK = Data(base64Encoded: encrytedTextALINK)
            let decryptedDataALINK = try AES(key: keyStr, iv: ivStr, padding: .pkcs7).decrypt(encryptedDataALINK!.bytes)
            decryptedTextALINK = String(bytes: decryptedDataALINK, encoding: .utf8) ?? ""
            print("AVISO LINK  dec >> \(decryptedTextALINK)")
            
            
        } catch {
            print("Error al desencriptar: \(error.localizedDescription)")
        }
    }
    
    func hexToStr(text: String) -> String {

        let regex = try! NSRegularExpression(pattern: "(0x)?([0-9A-Fa-f]{2})", options: .caseInsensitive)
        let textNS = text as NSString
        let matchesArray = regex.matches(in: textNS as String, options: [], range: NSMakeRange(0, textNS.length))
        let characters = matchesArray.map {
            Character(UnicodeScalar(UInt32(textNS.substring(with: $0.range(at: 2)), radix: 16)!)!)
        }

        return String(characters)
    }
    
}



