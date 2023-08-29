package ra.productcrud.service;

import ra.productcrud.model.CartItem;

import java.util.List;

public class CartService implements IGenericService<CartItem,Integer> {
    private List<CartItem> cart;

    public CartService(List<CartItem> cart) {
        this.cart = cart;
    }

    @Override
    public List<CartItem> findAll() {
        return cart;
    }

    @Override
    public void save(CartItem cartItem) {
        if(findById(cartItem.getId())==null){
            cart.add(cartItem);
        }else {
            cart.set(cart.indexOf(findById(cartItem.getId())),cartItem);
        }
    }

    @Override
    public void delete(Integer integer) {
        cart.remove(findById(integer));
    }

    @Override
    public CartItem findById(Integer integer) {
        for (CartItem c:cart) {
            if (c.getId()==integer) return c;
        }
        return null;
    }
    public  int getNewId(){
        int idmax = 0;
        for (CartItem c:cart
             ) {
            if (idmax<c.getId()){
                idmax= c.getId();
            }
        }
        return idmax+1;
    }
    public  CartItem findByProductId(Long id){
        for (CartItem c:cart
        ) {
            if (c.getP().getId()==id) return c;
        }
        return null;
    }
}
