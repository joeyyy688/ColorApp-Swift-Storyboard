//
//  ColorsTableVCViewController.swift
//  Random-Colors
//
//  Created by Joseph on 4/21/23.
//

import UIKit

class ColorsTableVCViewController: UIViewController {

    var randomColors: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addRandomColors()

        // Do any additional setup after loading the view.
    }
    
    func addRandomColors() {
        for _ in 0..<50{
            randomColors.append(.randomColor())
        }
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationViewController = segue.destination as! ColorsDetailViewController
        destinationViewController.color = sender as? UIColor
    }
    
    
}

extension ColorsTableVCViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return randomColors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        
        cell.backgroundColor = randomColors[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedColor = randomColors[indexPath.row]
        performSegue(withIdentifier: "ToColorDetailVC", sender: selectedColor)
    }
    
    
    
    
}
