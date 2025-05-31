package lk.jiat.action.model;

import java.io.Serializable;

public class Bid implements Serializable {

    private Long userId;
    private double amount;

    public Bid() { }

    public Bid(Long userId, double amount) {
        this.userId = userId;
        this.amount = amount;
    }

    public Long getUserId() { return userId; }
    public void setUserId(Long userId) { this.userId = userId; }

    public double getAmount() { return amount; }
    public void setAmount(double amount) { this.amount = amount; }
}
