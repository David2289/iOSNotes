
import UIKit

class TopicsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var topicManager = TopicsManager()
    var topicList = [TopicModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topicList = topicManager.topicsModel
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardReuseIdentifier")
    }

}

extension TopicsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        topicList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CardReuseIdentifier", for: indexPath) as! CardTableViewCell
        cell.title.text = topicList[indexPath.row].title
        cell.desc.text = topicList[indexPath.row].desc
        return cell
    }
    
}
