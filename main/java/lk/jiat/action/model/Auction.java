package lk.jiat.action.model;

import java.io.Serializable;

public class Auction implements Serializable{

    private Long id;
    private String itemName;
    private Bid currentBid;
    private boolean closed;

    public Auction() {}

    public Auction(Long id, String itemName) {
        this.id = id;
        this.itemName = itemName;
        this.closed = false;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getItemName() { return itemName; }
    public void setItemName(String itemName) { this.itemName = itemName; }

    public Bid getCurrentBid() { return currentBid; }
    public void setCurrentBid(Bid currentBid) { this.currentBid = currentBid; }

    public boolean isClosed() { return closed; }
    public void setClosed(boolean closed) { this.closed = closed; }
}
