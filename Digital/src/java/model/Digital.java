/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.sql.Timestamp;
/*
    purpose : information about Digital
    author: quanndhe130577
    time : 03/2020
*/
public class Digital {
    private int id;
    private String title;
    private String description;
    private String image;
    private String author;
    private Timestamp timePost;
    private String shortDes;

    public Digital() {
    }

    public Digital(int id, String title, String description, String image, String author, Timestamp timePost, String shortDes) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.image = image;
        this.author = author;
        this.timePost = timePost;
        this.shortDes = shortDes;
    }
    public String getDateConvert() {
        SimpleDateFormat dateFormat1 = new SimpleDateFormat("MMM dd yyyy - hh:mm a");
        String date = dateFormat1.format(this.timePost);
        return date; 
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getTimePost() {
        return timePost;
    }

    public void setTimePost(Timestamp timePost) {
        this.timePost = timePost;
    }

    public String getShortDes() {
        return shortDes;
    }

    public void setShortDes(String shortDes) {
        this.shortDes = shortDes;
    }
    
}
