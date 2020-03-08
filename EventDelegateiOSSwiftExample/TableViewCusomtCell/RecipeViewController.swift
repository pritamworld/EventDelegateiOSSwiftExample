//
//  DDOViewController.swift
//  EventDelegateiOSSwiftExample
//
//  Created by Pritesh Patel on 2018-02-26.
//  Copyright © 2018 MoxDroid. All rights reserved.
//

import UIKit

class RecipeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvDDO: UITableView!
    
    var recipesList = [Recipe]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvDDO.dataSource = self
        tvDDO.delegate = self
        readJSONDDOFile()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "recipeCell") as! RecipeTableViewCell
        let recipe = recipesList[indexPath.row]
        cell.lblAccountType.text = recipe.name
        cell.lblVIN.text = recipe.recipeDescription
        cell.lblMakeModelYear.text = recipe.notes
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
    

    
    /*
    func getDDO(){
        let url = URL(string: "http://www.stackoverflow.com")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            let jsonDecoder = JSONDecoder()
            let responseModel = try jsonDecoder.decode(Json4Swift_Base.self, from: data!)
            
        }
        task.resume()

    }
    
    func DDODictionary(){
        let url = URL(string: "http://www.json4swift.com")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            
            let someDictionaryFromJSON = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as! [String: Any]
            let json4Swift_Base = Json4Swift_Base(someDictionaryFromJSON)
            
        }
        task.resume()

    }
 */
    
    //https://hackernoon.com/everything-about-codable-in-swift-4-97d0e18a2999
    func readJSONDDOFile(){
        if let path = Bundle.main.path(forResource: "Recipes", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                        let jsonDecoder = JSONDecoder()
                        let welcome = try? jsonDecoder.decode(Welcome.self, from: data)
                        recipesList = welcome!.recipe
            } catch {
                // handle error
                print("Error : \(error)")
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
