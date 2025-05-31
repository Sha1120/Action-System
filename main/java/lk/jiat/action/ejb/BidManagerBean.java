package lk.jiat.action.ejb;

import lk.jiat.action.model.Auction;
import lk.jiat.action.model.Bid;

import javax.ejb.Stateless;

@Stateless
public class BidManagerBean {
    public boolean validateBid(Auction auction, Bid bid) {
        if (auction.isClosed()) return false;
        if (auction.getCurrentBid() == null) return true;
        return bid.getAmount() > auction.getCurrentBid().getAmount();
    }
}
