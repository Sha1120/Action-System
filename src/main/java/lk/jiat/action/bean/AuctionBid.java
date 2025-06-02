package lk.jiat.action.bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class AuctionBid implements Serializable {
    private String bidderName;
    private double bidAmount;
    private Timestamp bidTime;

    public AuctionBid(String bidderName, double bidAmount, Timestamp bidTime) {
        this.bidderName = bidderName;
        this.bidAmount = bidAmount;
        this.bidTime = bidTime;
    }

    public String getBidderName() {
        return bidderName;
    }

    public double getBidAmount() {
        return bidAmount;
    }

    public Timestamp getBidTime() {
        return bidTime;
    }

    public void setBidderName(String bidderName) {
        this.bidderName = bidderName;
    }

    public void setBidAmount(double bidAmount) {
        this.bidAmount = bidAmount;
    }

    public void setBidTime(Timestamp bidTime) {
        this.bidTime = bidTime;
    }
}
