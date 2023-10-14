//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Alexey Efimov on 07.08.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    /// 
    /// Передать массив с ответами на экран результатов
    /// Избавиться от кнопки возврата на экране результатов
    /// Определить наиболеечасто встречающегося тип животного
    /// Отобразить результаты в соответствии с этим животным
    /// 
   
//    tabBar.items?.last.is
//    tabBarController?.tabBar.items?.last = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func doneButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    
    deinit {
        print("\(type(of: self)) has been deallocated")
    }
}
