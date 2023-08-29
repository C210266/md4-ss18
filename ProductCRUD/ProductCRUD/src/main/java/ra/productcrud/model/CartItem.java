package ra.productcrud.model;

public class CartItem {
    private int id;
    private Product p;
    private  int quantity;

    public CartItem() {
    }

    public CartItem(int id, Product p, int quantity) {
        this.id = id;
        this.p = p;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
