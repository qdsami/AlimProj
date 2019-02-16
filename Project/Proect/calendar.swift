
import UIKit

class calendar:  UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var animals: [String] = [""]
    
    @IBOutlet weak var tf: UITextField!
    
    // cell reuse id (cells that scroll out of view can be reused)
    let cellReuseIdentifier = "cell"

    
    let defaults = UserDefaults.standard
    
    
    
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let myarray = defaults.stringArray(forKey: "SavedStringArray") ?? [String]()
        animals = myarray
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        
        // (optional) include this line if you want to remove the extra empty cell divider lines
        // self.tableView.tableFooterView = UIView()
        
        // This view controller itself will provide the delegate methods and row data for the table view.
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.animals.count
    }
    
    // create a cell for each table view row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a new cell if needed or reuse an old one
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier) as UITableViewCell!
        
        // set the text from the data model
        cell.textLabel?.text = self.animals[indexPath.row]
        
        return cell
    }
    
    // method to run when table view cell is tapped
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
        
        
    }
    

    
    
    
    
    @IBAction func add(_ sender: Any) {
        if(self.tf.text == ""){
            
        }else{
        animals.append(self.tf.text!)
        
        defaults.set(animals, forKey: "SavedStringArray")
        tableView.reloadData()
        
        
        self.tf.text = ""
        }
    }
    

    
    
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            animals.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
            defaults.set(animals, forKey: "SavedStringArray")
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
        }
    }
   
    
    
    
    
}
