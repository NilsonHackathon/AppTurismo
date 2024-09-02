//
//  HomeViewController.swift
//  AppTurismo
//
//  Created by User-UAM on 8/31/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var ViewLogoFondo: UIView!
    @IBOutlet weak var ViewInfo1: UIView!
    
    @IBOutlet weak var InfoView2: UIView!
    
    @IBOutlet weak var InfoView3: UIView!
    
    @IBOutlet weak var InfoView4: UIView!
    
    

    @IBOutlet weak var buttonCerrarSesion: UIButton!
    
    //Colores
    private let ColorBannerView = UIColor(red: 181/255, green: 99/255, blue: 51/255, alpha: 1.0)
    
    private var isTouch = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.isHidden = true
        
        //Color fondo ViewVerde
        ViewLogoFondo.backgroundColor = ColorBannerView
        
        // Agregar gestos de toque a las vistas
        addTapGesture(to: ViewInfo1, action: #selector(tapViewInfo(_:)))
        addTapGesture(to: InfoView2, action: #selector(tapViewInfo(_:)))
        addTapGesture(to: InfoView3, action: #selector(tapViewInfo(_:)))
        addTapGesture(to: InfoView4, action: #selector(tapViewInfo(_:)))
        
        //redondear boton
        buttonCerrarSesion.layer.cornerRadius = 12
        buttonCerrarSesion.layer.masksToBounds = true
        
    }
    //Cerrar sesión boton
    @IBAction func ActionButtonCerrarSesion(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    // Agregar gesto de toque a la InfoViewController
    private func addTapGesture(to view: UIView, action: Selector) {
        let tapGesture = UITapGestureRecognizer(target: self, action: action)
        view.addGestureRecognizer(tapGesture)
        view.isUserInteractionEnabled = true
    }
    
    @objc func tapViewInfo(_ sender: UITapGestureRecognizer) {
            guard let tappedView = sender.view else { return }
            
            switch tappedView {
            case ViewInfo1:
                let infoViewController = InfoViewController(nibName: "InfoViewController", bundle: nil)
                self.navigationController?.pushViewController(infoViewController, animated: true)
            case InfoView2:
                let infoDosViewController = InfoDosViewController(nibName: "InfoDosViewController", bundle: nil)
                self.navigationController?.pushViewController(infoDosViewController, animated: true)
            case InfoView3:
                let infoTresViewController = InfoTresViewController(nibName: "InfoTresViewController", bundle: nil)
                self.navigationController?.pushViewController(infoTresViewController, animated: true)
            case InfoView4:
                let infoCuatroViewController = InfoCuatroViewController(nibName: "InfoCuatroViewController", bundle: nil)
                self.navigationController?.pushViewController(infoCuatroViewController, animated: true)
            default:
                break
            }
        }
    
    

}
