package com.kk.pojo;


import java.util.Objects;

public class Books {
    private int bookID;
    private String bookName;
    private int bookCounts;


    public Books() {
        super();
    }

    public Books(int bookID, String bookName, int bookCounts) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookCounts = bookCounts;
    }

    public int getBookID() {
        return bookID;
    }

    public String getBookName() {
        return bookName;
    }

    public int getBookCounts() {
        return bookCounts;
    }



    public void setBookID(int bookID) {
        this.bookID = bookID;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public void setBookCounts(int bookCounts) {
        this.bookCounts = bookCounts;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Books books = (Books) o;
        return bookID == books.bookID && bookCounts == books.bookCounts && Objects.equals(bookName, books.bookName) ;
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookID, bookName, bookCounts);
    }

    @Override
    public String toString() {
        return "Books{" +
                "bookID=" + bookID +
                ", bookName='" + bookName + '\'' +
                ", bookCounts=" + bookCounts +
                '}';
    }
}
