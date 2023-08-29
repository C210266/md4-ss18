package ra.productcrud.model;

import java.util.ArrayList;
import java.util.List;

public class Product {
    private Long id;
    private  String name;
    private String descriptions;
    private double price;
    private int stock;
    private String imageUrl;
    private List<String> imageUrls= new ArrayList<>();
    private boolean status =true;

    public Product() {
    }

    public Product(Long id, String name, String descriptions, List<String> imageList, double price, int stock, String imageUrl) {
        this.id = id;
        this.name = name;
        this.descriptions = descriptions;
        this.price = price;
        this.stock = stock;
        this.imageUrl = imageUrl;
        this.imageUrls = imageList;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public List<String> getImageUrls() {
        return imageUrls;
    }

    public void setImageUrls(List<String> imageUrls) {
        this.imageUrls = imageUrls;
    }
}
