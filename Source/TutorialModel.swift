import UIKit

@objc public class TutorialModel: NSObject {

  // MARK: Public methods

  public var image: UIImage? {
    get {
      return imageView.image
    }
    set {
      imageView.image = newValue
    }
  }

  public var title: String? {
    get {
      return titleLabel.text
    }
    set {
      titleLabel.text = newValue
    }
  }
  public var text: String? {
    get {
      return textLabel.text
    }
    set {
      textLabel.text = newValue
    }
  }

  lazy private(set) var imageView: UIImageView = {
    let imageView = UIImageView()
    imageView.autoresizingMask = .FlexibleLeftMargin | .FlexibleRightMargin

    return imageView
    }()

  lazy private(set) var titleLabel: UILabel = {
    let label = UILabel(frame: CGRectNull)

    label.autoresizingMask = .FlexibleLeftMargin | .FlexibleRightMargin
    label.numberOfLines = 1
    label.textAlignment = .Center

    return label
    }()

  lazy private(set) var textLabel: UILabel = {
    let label = UILabel(frame: CGRectNull)

    label.autoresizingMask = .FlexibleLeftMargin | .FlexibleRightMargin
    label.numberOfLines = 4
    label.textAlignment = .Center

    return label
    }()

  convenience init(title: String?, text: String?, image: UIImage?) {
    self.init()

    self.image = image
    self.title = title
    self.text = text
  }

}

extension TutorialModel {
  func views() -> [UIView] {
    var views = [UIView]()

    if image != nil {
      views.append(imageView)
    }

    if title != nil {
      views.append(titleLabel)
    }

    if text != nil {
      views.append(textLabel)
    }

    return views
  }
}
