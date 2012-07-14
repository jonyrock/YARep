
using System;

class Question {

    private string authorName;
    public string AuthorName {
        get { return authorName; }
        set { authorName = value; }
    }

    private string authorEmail;
    public string AuthorEmail {
        get { return authorEmail; }
        set { authorEmail = value; }
    }
    
    private string authorPhone;
    public string AuthorPhone {
        get { return authorPhone; }
        set { authorPhone = value; }
    }
    
    private DateTime creationTime;
    public DateTime CreationTime {
        get { return creationTime; }
        set { creationTime = value; }
    }

    private int id;
    public int Id {
        get { return id; }
        set { id = value; }
    }


}