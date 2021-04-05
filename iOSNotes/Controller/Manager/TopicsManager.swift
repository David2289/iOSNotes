
import Foundation

class TopicsManager {
    
    var topicsModel = [TopicModel]()
    init() {
        topicsModel.append(
            TopicModel(
                title: NSLocalizedString("TopicsItemDisplayTitle", comment: ""),
                desc: NSLocalizedString("TopicsItemDisplayDesc", comment: "")
            )
        )
        topicsModel.append(
            TopicModel(
                title: NSLocalizedString("TopicsItemPermTitle", comment: ""),
                desc: NSLocalizedString("TopicsItemPermDesc", comment: "")
            )
        )
    }
    
}

struct TopicModel {
    
    let title: String
    let desc: String
    
}
