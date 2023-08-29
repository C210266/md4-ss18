package ra.productcrud.controller;

import ra.productcrud.model.CartItem;
import ra.productcrud.model.Product;
import ra.productcrud.service.CartService;
import ra.productcrud.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "CartServlet", value = "/CartServlet")
public class CartServlet extends HttpServlet {
    protected CartService cartService;
    protected ProductService productService;

    @Override
    public void init() throws ServletException {
        cartService = new CartService(new ArrayList<>());
        productService = new ProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String action = request.getParameter("action");
        if (action == null) {

        } else {
            switch (action) {
                case "ADDTOCART":
                    Long id = Long.valueOf(request.getParameter("id"));
                    CartItem c = cartService.findByProductId(id);
                    if (c == null) {
                        Product p = productService.findById(id);
                        CartItem cartItem = new CartItem(cartService.getNewId(), p, 1);
                        cartService.save(cartItem);
                    } else {
                        c.setQuantity(c.getQuantity() + 1);
                        cartService.save(c);
                    }
                    session.setAttribute("cart", cartService.findAll());
//                    request.setAttribute("cart",cartService.findAll());
                    request.getRequestDispatcher("/WEB-INF/cart.jsp").forward(request, response);

                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}