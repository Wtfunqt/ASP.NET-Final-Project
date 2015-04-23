using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Movies
/// </summary>
public class Movies
{
    public int id { get; set; }
    public String title { get; set; }
    public int prodyear { get; set; }
    public String company { get; set; }
    public String director { get; set; }
    public String editor { get; set; }

    public Movies(int id, String title, int prodyear, String company, String director, String editor) {
        this.id = id;
        this.title = title;
        this.prodyear = prodyear;
        this.company = company;
        this.director = director;
        this.editor = editor;
    }
}