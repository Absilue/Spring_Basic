package com.multi.mvc3;

public class MovieVO {
    private String title;
    private String price;
    private String person;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getPerson() {  // 속성명을 올바르게 수정
        return person;
    }

    public void setPerson(String person) {  // 속성명을 올바르게 수정
        this.person = person;
    }

    @Override
    public String toString() {
        return "MovieVO [title=" + title + ", price=" + price + ", person=" + person + "]";
    }
}