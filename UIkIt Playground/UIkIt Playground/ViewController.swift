import UIKit

class ViewController: UIViewController {
   override func viewDidLoad() {
      super.viewDidLoad();
      view.backgroundColor = UIColor.white;
      
      initialLabel();
      button();
      table();
   }
   
   private func initialLabel() -> Void {
      let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 50));
      label.text = "Hello World, THis is inital label";
      label.textColor = UIColor.black;
      
      view.addSubview(label);
   }
   
   private func textField() -> Void {
      let input = UITextField();
      input.placeholder = "Enter some text";
      input.frame = CGRect(x: 100, y: 300, width: 200, height: 50)
      
      view.addSubview(input);
   }
   
   private func button() -> Void {
      let submit = UIButton(type: .system)
      submit.translatesAutoresizingMaskIntoConstraints = false
      submit.setTitle("SUBMIT", for: .normal)
      submit.backgroundColor = UIColor.blue;
      submit.frame = CGRect(x: 100, y: 200, width: 200, height: 100)
      submit.setTitleColor(UIColor.white, for: .normal)
      
      view.addSubview(submit)
   }
   
   private func table() -> Void {
      let table = UITableView(frame: CGRect(x: 100, y: 350, width: 200, height: 400));
      table.backgroundColor = UIColor.green;
      table.rowHeight = 30;
      table.dataSource = self;
      table.register(UITableViewCell.self, forCellReuseIdentifier: "Table");
      
      view.addSubview(table);
   }
}

extension ViewController : UITableViewDataSource {
   public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return 5;
   }
   
   public func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell {
//      let cell = UITableViewCell();
      let cell = tableView.dequeueReusableCell(withIdentifier: "Table")!;
      cell.textLabel?.text = "Hello world";
      cell.backgroundColor = .red
      
      return cell;
   }
}
