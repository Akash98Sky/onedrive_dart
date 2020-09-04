// ***********
// Auth Enums
// ***********

enum Files {
  /// Grants read-only permission to all of a user's OneDrive files.
  Read,

  /// Grants read and write permission to all of a user's OneDrive files.
  ReadWrite,

  /// Grants read-only permission to all of a user's OneDrive files,
  /// including files shared with the user.
  Read_All,

  /// Grants read and write permission to all of a user's OneDrive files,
  /// including files shared with the user.
  ReadWrite_All,

  /// Allows the app to read, create, update, and delete files
  /// in the application's folder.
  ReadWrite_AppFolder,

  /// Allows the app to read files that the user selects.
  /// The app has access for several hours after the user selects a file.
  Read_Selected,

  /// Allows the app to read and write files that the user selects.
  /// The app has access for several hours after the user selects a file.
  ReadWrite_Selected,
}

enum Sites {
  /// Allows the app to read documents and list items in all site collections
  /// on behalf of the signed-in user.
  Read_All,

  /// Allows the app to edit or delete documents and list items in all
  /// site collections on behalf of the signed-in user.
  ReadWrite_All,

  /// Allows the app to manage and create lists, documents, and list items
  /// in all site collections on behalf of the signed-in user.
  Manage_All,

  /// Allows the app to have full control to SharePoint sites in all
  /// site collections on behalf of the signed-in user.
  FullControl_All,
}

// **********
// API Enums
// **********

enum DriveType {
  /// OneDrive personal drives
  personal,

  /// OneDrive for Business
  business,

  /// SharePoint document libraries
  documentLibrary,
}

enum QuotaState {
  /// The drive has plenty of remaining quota left.
  normal,

  /// Remaining quota is less than 10% of total quota space.
  nearing,

  /// Remaining quota is less than 1% of total quota space.
  critical,

  /// The used quota has exceeded the total quota. New files or folders
  /// cannot be added to the drive until it is under the total quota amount
  /// or more storage space is purchased.
  exceeded,
}

enum PublicationLevel {
  published,
  checkout,
}

enum ShareScope {
  /// The item is shared by using a link that works for anyone with the link.
  anonymous,

  /// The item is shared by using a link that works for anyone in the
  /// owner's organization.
  organization,

  /// The item is shared with specific users only.
  users,
}

enum ShareType {
  /// A view-only sharing link, allowing read-only access.
  view,

  /// An edit sharing link, allowing read-write access.
  edit,

  /// A view-only sharing link that can be used to embed content into a host webpage.
  /// Embed links are not available for OneDrive for Business or SharePoint.
  embed,
}

enum ObjectType {
  File,
  Folder,
}
