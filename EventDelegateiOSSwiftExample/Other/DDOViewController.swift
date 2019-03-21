//
//  DDOViewController.swift
//  EventDelegateiOSSwiftExample
//
//  Created by Pritesh Patel on 2018-02-26.
//  Copyright © 2018 MoxDroid. All rights reserved.
//

import UIKit

class DDOViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tvDDO: UITableView!
    
    var ddoModels:[DDOModel]?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tvDDO.dataSource = self
        tvDDO.delegate = self
        readJSONDDOFile()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (ddoModels?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ddoCell") as! DDOTableViewCell
        let ddo = ddoModels![indexPath.row]
        cell.lblAccountType.text = "accountType"
        cell.lblVIN.text = "vin"
        cell.lblMakeModelYear.text = "year - ddo.make - model"
        return cell
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
        if let path = Bundle.main.path(forResource: "DDOData", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResultData = jsonResult as? Array<AnyObject>
                {
                    // do stuff
                    print(jsonResultData.count)
                    
                    //ddoModels = DDOModel.modelsFromDictionaryArray(array: jsonResult as! NSArray)
                    
                }
            } catch {
                // handle error
                print("Error")
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
